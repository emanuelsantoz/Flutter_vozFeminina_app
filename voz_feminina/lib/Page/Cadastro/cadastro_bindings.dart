import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:voz_feminina/Page/Cadastro/cadastro_controller.dart';

class CadastroBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CadastroController>(() => CadastroController());
  }
}