import 'package:get/get.dart';

class LoginController extends GetxController{
  RxBool isLoading = true.obs;

  @override
  void onInit() async {
    super.onInit();
    isLoading.value = true;

    isLoading.value = false;
  }
}