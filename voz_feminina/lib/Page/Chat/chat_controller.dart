import 'package:get/get.dart';

class ChatController extends GetxController {
  RxBool isLoading = true.obs;

  @override
  void onInit() async {
    super.onInit();
    isLoading.value = true;

    isLoading.value = false;
  }}