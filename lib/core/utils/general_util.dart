import 'package:laith_cmd_test/core/services/connectivity_service.dart';
import 'package:laith_cmd_test/core/services/location_services/location_services.dart';
import 'package:laith_cmd_test/app/my_app_controller.dart';
import '../../core/data/repositories/shared_preferences.dart';
import 'package:get/get.dart';

SharedPreferance get storage => Get.find<SharedPreferance>();

ConnectivityService get connectivityService => Get.find<ConnectivityService>();

MyAppController get myAppController => Get.find<MyAppController>();

LocationService get locationService => Get.find<LocationService>();
// CartServices get cartServices => Get.find<CartServices>();

// bool get isOnline =>
//     Get.find<MyAppController>().connectivityStatus == ConnectivityStatus.ONLINE;
//
// bool get isOffline =>
//     Get.find<MyAppController>().connectivityStatus ==
//         ConnectivityStatus.OFFLINE;

// void checkConnection(Function function) {
//   if (isOnline)
//     function();
//   else
//     showNoConnectionMessage();
// }