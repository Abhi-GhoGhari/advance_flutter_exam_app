import 'dart:convert';

import 'package:advance_flutter_exam_app/modal/app_modal.dart';
import 'package:http/http.dart' as http;

class ValorantHelper {
  ValorantHelper._();

  static ValorantHelper apihelper = ValorantHelper._();

  String ApiLink = "https://valorant-api.com/v1/agents";

  Future<List<ValorantModal>> getVeloApi() async {
    List<ValorantModal> velos = [];

    http.Response response = await http.get(
      Uri.parse(ApiLink),
    );

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List velodata = data['data'];
      velos = velodata
          .map(
            (e) => ValorantModal.fromJson(e),
          )
          .toList();
    }
    return velos;
  }
}
