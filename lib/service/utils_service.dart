import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:device_info/device_info.dart';
import 'package:get_version/get_version.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static fireToast(String text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static Future<Map<String, String>> deviceParms() async {
    Map<String, String> parms = {};
    var deviceInfo = DeviceInfoPlugin();

    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      parms.addAll({
        'deviceId': iosDeviceInfo.identifierForVendor,
        'deviceType':'I',
        'deviceToken':''
      });
    } else {
      var androidDeviceInfo=await deviceInfo.androidInfo;
      parms.addAll({
        'deviceId': androidDeviceInfo.androidId,
        'deviceType':'I',
        'deviceToken':''
      });
    }

    return parms;
  }

  static Future<void> makePhonecall(String phoneNumber) async {
    final Uri launchuri = Uri(
      scheme: 'tel',
      path: phoneNumber
    );
    await launchUrl(launchuri);


  }

  static Future<void> launchInBrauther(Uri url)async {
    if(await launchUrl(url,mode: LaunchMode.externalApplication)){

    }else{
      throw 'Uri xato!!!$url';
    }
  }


  static Future<void> getVersion() async {
    String version = await GetVersion.projectVersion;
    String buildNumber = await GetVersion.projectCode;
    print("Version: $version");
    print("Build Number: $buildNumber");
  }

}
