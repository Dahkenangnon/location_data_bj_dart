import './utils.dart';

import '../data/departments.dart';
import '../data/towns.dart';
import '../data/districts.dart';
import '../data/neighborhoods.dart';

/// [LocationData] allow you to get data about Benin's locations.
///
/// Warning: For flutter users, this package don't provide any widget.
///
/// You can get data about departments, towns, districts and neighborhoods.
///
/// Note: All methods that return a list of locations have a parameter `sortBy` that can be `asc` or `desc`.
///
/// Example:
/// ```dart
/// // Get all departments in ascending order
/// List<Department> departments = LocationData.departmentList();
///
/// // Get all departments in descending order
/// List<Department> departments = LocationData.departmentList(sortBy: 'desc');
///
/// // Get all towns in ascending order
/// List<Town> towns = LocationData.townsList();
///
/// // Get all towns in descending order
/// List<Town> towns = LocationData.townsList(sortBy: 'desc');
///
///```
///
///
class LocationData {
  /// Get all departments in ascending or descending order.
  ///
  static List<Department> departmentList({String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return departments;
    } else {
      return departments.reversed.toList();
    }
  }

  /// Get all towns in ascending or descending order.
  ///
  static List<Town> townsList({String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return towns;
    } else {
      return towns.reversed.toList();
    }
  }

  /// Get all districts in ascending or descending order.
  ///
  static List<District> districtList({String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return districts;
    } else {
      return districts.reversed.toList();
    }
  }

  /// Get all neighborhoods in ascending or descending order.
  ///
  static List<Neighborhood> neighborhoodList({String sortBy = 'asc'}) {
    if (sortBy == 'asc') {
      return neighborhoods;
    } else {
      return neighborhoods.reversed.toList();
    }
  }

  /// Get a department by its code.
  ///
  static Department? department(String code) {
    return departments.firstWhere(
      (element) => element.code == code,
    );
  }

  /// Get a town by its code.
  ///
  static Town? town(String code) {
    return towns.firstWhere((element) => element.code == code);
  }

  /// Get a district by its code.
  ///
  static District? district(String code) {
    return districts.firstWhere(
      (element) => element.code == code,
    );
  }

  /// Get a neighborhood by its code.
  ///
  static Neighborhood? neighborhood(String code) {
    return neighborhoods.firstWhere(
      (element) => element.code == code,
    );
  }

  /// Get a department by its name.
  ///
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

  /// Get a town by its name.
  ///
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

  /// Get a district by its name.
  ///
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

  /// Get a neighborhood by its name.
  ///
  static List<LocationEntity> searchData(String query,
      {String sortBy = 'asc'}) {
    List<LocationEntity> result = [];
    result.addAll(searchDepartments(query, sortBy: sortBy));
    result.addAll(searchTowns(query, sortBy: sortBy));
    result.addAll(searchDistricts(query, sortBy: sortBy));
    result.addAll(searchNeighborhoods(query, sortBy: sortBy));
    return result;
  }

  /// Search departments by name.
  ///
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

  /// Search towns by name.
  ///
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

  /// Search districts by name.
  ///
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

  /// Search neighborhoods by name.
  ///
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
