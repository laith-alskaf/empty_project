import 'package:laith_cmd_test/core/enums/connectivity_status.dart';
import 'package:laith_cmd_test/core/services/base_controller.dart';
import 'package:laith_cmd_test/core/utils/general_util.dart';


class MyAppController extends BaseController {
  ConnectivityStatus connectivityStatus = ConnectivityStatus.OFFLINE;

  set setConnectivityStatus(ConnectivityStatus value) {
    connectivityStatus = value;
  }

  void listenForConnectivityStatus() {
    print("Connection From MyAppController First initial $connectivityStatus");

    connectivityService.connectivityStatusController.stream.listen((event) {
      setConnectivityStatus = event;
      print("Connection From MyAppController Changed To $event");
      // Get.put(HomeViewController()).isOnline.value =
      //     connectivityStatus == ConnectivityStatus.ONLINE ? true : false;
      // if (isOffline) {
      //   BotToast.closeAllLoading();
      //   showNoConnectionMessage();
      // }
    });
  }

  @override
  void onInit() async {
    listenForConnectivityStatus();
    super.onInit();
  }
}
