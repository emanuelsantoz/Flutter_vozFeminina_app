import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:voz_feminina/Page/MoreTimeLine/login_controller.dart';

class MoreTimeLineBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MoreTimeLineController>(() => MoreTimeLineController());
  }
}