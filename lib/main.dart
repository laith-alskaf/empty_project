import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laith_cmd_test/app/my_app.dart';
import 'package:laith_cmd_test/app/my_app_controller.dart';
import 'package:laith_cmd_test/core/data/repositories/shared_preferences.dart';
import 'package:laith_cmd_test/core/services/connectivity_service.dart';
import 'package:laith_cmd_test/core/services/location_services/location_services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'core/services/cart_services.dart';

SharedPreferences? globalSharedPreferences;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // globalSharedPreferences=await SharedPreferences.getInstance();

  await Get.putAsync<SharedPreferences>(
        () async {
      var sharedPref = await SharedPreferences.getInstance();
      return sharedPref;
    },);


  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
      
    );
  }catch (e){
    e;
  }

  runApp(const MyApp());
}
