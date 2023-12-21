import './utils.dart';

import '../data/departments.dart';
import '../data/towns.dart';
import '../data/districts.dart';
import '../data/neighborhoods.dart';


class LocationData {
  static List<Department> departmentList({String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return departments;
    } else {
      return departments.reversed.toList();
    }
  }

  static List<Town> townsList({String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return towns;
    } else {
      return towns.reversed.toList();
    }
  }

  static List<District> districtList({String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return districts;
    } else {
      return districts.reversed.toList();
    }
  }

  static List<Neighborhood> neighborhoodList({String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return neighborhoods;
    } else {
      return neighborhoods.reversed.toList();
    }
  }

  static Department? department(String code) {
    return departments.firstWhere(
      (element) => element.code == code,
    );
  }

  static Town? town(String code) {
    return towns.firstWhere((element) => element.code == code);
  }

  static District? district(String code) {
    return districts.firstWhere(
      (element) => element.code == code,
    );
  }

  static Neighborhood? neighborhood(String code) {
    return neighborhoods.firstWhere(
      (element) => element.code == code,
    );
  }

  static List<Town> townsOfDepartment(String departmentCode,
      {String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return towns
          .where((element) => element.departmentCode == departmentCode)
          .toList();
    } else {
      return towns
          .where((element) => element.departmentCode == departmentCode)
          .toList()
          .reversed
          .toList();
    }
  }

  static List<District> districtsOfTown(String townCode,
      {String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return districts
          .where((element) => element.townCode == townCode)
          .toList();
    } else {
      return districts
          .where((element) => element.townCode == townCode)
          .toList()
          .reversed
          .toList();
    }
  }

  static List<Neighborhood> neighborhoodsOfDistrict(String districtCode,
      {String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return neighborhoods
          .where((element) => element.districtCode == districtCode)
          .toList();
    } else {
      return neighborhoods
          .where((element) => element.districtCode == districtCode)
          .toList()
          .reversed
          .toList();
    }
  }

  static List<LocationEntity> searchData(String query,
      {String sortBy = 'asc'}) {
    List<LocationEntity> result = [];
    result.addAll(searchDepartments(query, sortBy: sortBy));
    result.addAll(searchTowns(query, sortBy: sortBy));
    result.addAll(searchDistricts(query, sortBy: sortBy));
    result.addAll(searchNeighborhoods(query, sortBy: sortBy));
    return result;
  }

  static List<Department> searchDepartments(String query,
      {String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return departments
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      return departments
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList()
          .reversed
          .toList();
    }
  }

  static List<Town> searchTowns(String query, {String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return towns
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      return towns
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList()
          .reversed
          .toList();
    }
  }

  static List<District> searchDistricts(String query, {String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return districts
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      return districts
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList()
          .reversed
          .toList();
    }
  }

  static List<Neighborhood> searchNeighborhoods(String query,
      {String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return neighborhoods
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      return neighborhoods
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList()
          .reversed
          .toList();
    }
  }
}


