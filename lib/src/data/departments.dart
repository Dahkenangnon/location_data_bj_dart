
import '../utils/utils.dart';

List<dynamic> departmentsRaw = [
  {"code": "ali", "name": "ALIBORI"},
  {"code": "ata", "name": "ATACORA"},
  {"code": "atl", "name": "ATLANTIQUE"},
  {"code": "bor", "name": "BORGOU"},
  {"code": "col", "name": "COLLINES"},
  {"code": "cou", "name": "COUFFO"},
  {"code": "don", "name": "DONGA"},
  {"code": "lit", "name": "LITTORAL"},
  {"code": "mon", "name": "MONO"},
  {"code": "oue", "name": "OUEME"},
  {"code": "pla", "name": "PLATEAU"},
  {"code": "zou", "name": "ZOU"}
];

List<Department> departments =
    departmentsRaw.map((e) => Department.fromJson(e)).toList();
