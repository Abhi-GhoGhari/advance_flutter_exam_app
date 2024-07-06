import 'package:advance_flutter_exam_app/modal/app_modal.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../helper/valorant_helper/valorant_helper.dart';

class ValorantController extends GetxController {
  RxList<ValorantModal> allVelos = <ValorantModal>[].obs;

  Future<void> getVelo() async {
    allVelos.value = await ValorantHelper.apihelper.getVeloApi();
    update();
  }
}
