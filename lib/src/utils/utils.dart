class Department implements LocationEntity {
  @override
  final String name;
  @override
  final String code;

  Department({required this.name, required this.code});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      name: json['name'],
      code: json['code'],
    );
  }
}

class Town implements LocationEntity {
  @override
  final String name;
  @override
  final String code;
  final String departmentCode;

  Town({required this.name, required this.code, required this.departmentCode});

  factory Town.fromJson(Map<String, dynamic> json) {
    return Town(
      name: json['name'],
      code: json['code'],
      departmentCode: json['department_code'],
    );
  }
}

class District implements LocationEntity {
  @override
  final String name;
  @override
  final String code;
  final String townCode;

  District({required this.name, required this.code, required this.townCode});

  factory District.fromJson(Map<String, dynamic> json) {
    return District(
      name: json['name'],
      code: json['code'],
      townCode: json['town_code'],
    );
  }
}

class Neighborhood implements LocationEntity {
  @override
  final String name;
  @override
  final String code;
  final String districtCode;

  Neighborhood(
      {required this.name, required this.code, required this.districtCode});

  factory Neighborhood.fromJson(Map<String, dynamic> json) {
    return Neighborhood(
      name: json['name'],
      code: json['code'],
      districtCode: json['district_code'],
    );
  }
}

abstract class LocationEntity {
  String get name;
  String get code;
}
