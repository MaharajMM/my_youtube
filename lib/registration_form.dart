import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PinCodeAPI {
  final String base_url = "https://api.postalpincode.in/pincode/";

  Future<String> getPinCode(String area) async {
    String url = base_url + area;
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      if (data[0]['Status'] == "Success") {
        String pincode = data[0]['PostOffice'][0]['Pincode'];
        String country = data[0]['PostOffice'][0]['Country'];
        return pincode + "," + country;
      } else {
        return "Pin code not found for given area.";
      }
    } else {
      return "Error in connecting to Pin Code API.";
    }
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _areaController = TextEditingController();
  final _pincodeController = TextEditingController();
  final _countryController = TextEditingController();

  PinCodeAPI _pinCodeAPI = PinCodeAPI();

  @override
  void dispose() {
    _areaController.dispose();
    _pincodeController.dispose();
    _countryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _areaController,
                decoration: InputDecoration(
                  labelText: "Area",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter an area";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              FutureBuilder<String>(
                future: _pinCodeAPI.getPinCode(_areaController.text),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      List<String>? data = snapshot.data?.split(",");
                      _pincodeController.text = data![0];
                      _countryController.text = data[1];
                    } else {
                      return Text("Error: ${snapshot.error}");
                    }
                  }
                  return SizedBox.shrink();
                },
              ),
              TextFormField(
                controller: _pincodeController,
                decoration: InputDecoration(
                  labelText: "Pin code",
                ),
                enabled: false,
              ),
              TextFormField(
                controller: _countryController,
                decoration: InputDecoration(
                  labelText: "Country",
                ),
                enabled: false,
              ),
              SizedBox(height: 16.0),
              elevatedBtn(),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton elevatedBtn() {
    return ElevatedButton(
      child: Text("Submit"),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Form is valid, submit data
          setState(() {
            String area = _areaController.text;
            String pincode = _pincodeController.text;
            String country = _countryController.text;
          });
        }
      },
    );
  }
}
