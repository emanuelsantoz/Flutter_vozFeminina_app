import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:voz_feminina/Page/Perfil/perfil_controller.dart';

class PerfilBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<PerfilController>(() => PerfilController());
  }
}