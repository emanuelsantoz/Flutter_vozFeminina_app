import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:voz_feminina/Page/Pesquisa/pesquisa_controller.dart';

class PesquisaBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<PesquisaController>(() => PesquisaController());
  }
}