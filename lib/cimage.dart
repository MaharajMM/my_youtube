import 'package:flutter/material.dart';
import 'package:flutter_dotted/flutter_dotted.dart';
import 'package:my_youtube/src/constants/imports.dart';

class Ccampaign extends StatelessWidget {
  const Ccampaign({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Upload Photo",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        //fontSize: 20
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(10),
                ),
                FlutterDotted(
                  color: Colors.grey,
                  gap: 8.0,
                  strokeWidth: 2.0,
                  child: GestureDetector(
                    onTap: () {
                      //uploading image
                    },
                    child: Container(
                      height: getDeviceHeight(250),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.file_upload_outlined,
                            size: 45,
                          ),
                          Text(
                            "Upload Photo of the campaign",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                /*TEXTFILES*/

                SizedBox(height: getDeviceHeight(20)),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What do you want to tell the world?",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: getDeviceHeight(15)),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Write appropriate Caption',
                    //hintText: 'Phone No.',

                    border: OutlineInputBorder(),
                  ),
                ),

                /* IMAGE UPLOADING */

                /*ELEVATED BUTTON => Done */

                SizedBox(height: getDeviceHeight(30)),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Upload'.toUpperCase(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
