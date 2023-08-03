import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:laith_cmd_test/core/enums/message_type.dart';
import 'package:laith_cmd_test/ui/shared/colors.dart';
import 'package:laith_cmd_test/ui/shared/custom_widget/custom_toast.dart';

double screenWidth(percent) {
  return Get.size.width / percent;
}

double screenHeight(percent) {
  return Get.size.width / percent;
}

double get width => Get.size.width;

double get height => Get.size.height;

//___________________________________________________________________________
void customLoader() => BotToast.showCustomLoading(toastBuilder: (context) {
      return Container(
        decoration: BoxDecoration(
            color: AppColors.textColormain,
            borderRadius: BorderRadius.circular(10)),
        width: screenWidth(4),
        height: screenHeight(4),
        // child: SpinKitCircle(
        //   color: AppColors.mainOrangeColor,
        //   size: screenWidth(8),
        // ),
      );
    });
//___________________________________________________________
void showNoConnectionMessage() {
  CustomToast.showMessage(
      message: 'Please check internet connection',
      messageType: MessageType.WARNING);
}
//_____________________________________________________________


