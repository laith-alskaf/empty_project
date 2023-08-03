
import 'package:get/get.dart';
import 'package:laith_cmd_test/core/enums/operation_type.dart';
import 'package:laith_cmd_test/core/enums/request_status.dart';

class BaseController extends GetxController {
  var status = RequestStatus.DEFUALT.obs;
  var operationType = {
    "CATEGORY": OperationType.NONE,
    "MEAL": OperationType.NONE,
    "NONE": OperationType.NONE
  }.obs;
  set setRequestStatus(RequestStatus value) {
    status.value = value;
  }

  void setOperationType(String key, OperationType value) {
    // ignore: invalid_use_of_protected_member
    operationType.value[key] = value;
  }



  // Future runFutuerFunction({required Future function}) async {
  //   checkConnection(() async {
  //     await function;
  //   });
  // }

  // Future runLoadingFutureFunction({
  //   required Future function,
  //   OperationType? type = OperationType.NONE,
  // }) async {
  //   checkConnection(() async {
  //     setRequestStatus = RequestStatus.LOADING;
  //     setOperationType(type!.name.toString(), type);
  //     await function;
  //     setRequestStatus = RequestStatus.DEFUALT;
  //     setOperationType(type.name.toString(), OperationType.NONE);
  //   });
  // }

  // Future runFullLoadingFutureFunction({
  //   required Future function,
  // }) async {
  //   checkConnection(() async {
  //     customLoader();
  //
  //     await function;
  //
  //     BotToast.closeAllLoading();
  //   });
  // }


}

