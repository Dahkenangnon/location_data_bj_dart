# BJ Location Data


Benin Republic location data for web and mobile apps

For javascript version, please visit [location_data_bj](https://www.npmjs.com/package/location_data_bj) npm package

For raw data version, please visit [bj_location_data_raw](https://github.com/Dahkenangnon/bj_location_data_raw) repository

>
>
> Data Snapshot (As of 2023-12-21)
>
> Department: 12
>
> Town: 77
>
> District: 546
>
> Neighborhood: 5303
>
> The `code` used in the dataset is an auto generated code. Please refer to the [bj_location_data_raw](https://github.com/Dahkenangnon/bj_location_data_raw) repository for more information.
------------------------

Note: 
- This package is pure dart package. It can be used in all platforms supported by dart.

- For flutter users, note that we don't provide any widget for now. **`Feel free to contribute`**.

## Installation
In the dependencies: section of your pubspec.yaml, add the following line:

```yaml
dependencies:
  location_data_bj: <latest_version>
```

## API Usage: 

1. Get all departments

```dart 
List<Department> departments = LocationData.departmentList(sortBy: 'asc');
```

2. Get all towns

```dart
List<Town> towns = LocationData.townsList(sortBy: 'asc');
```

3. Get all districts

```dart
List<District> districts = LocationData.districtList(sortBy: 'asc');
```

4. Get all neighborhoods

```dart
List<Neighborhood> neighborhoods = LocationData.neighborhoodList(sortBy: 'asc');
```

5. Get department by code

```dart
Department? department = LocationData.department('cot');
```

6. Get town by code

```dart
Town? town = LocationData.town('cot');
```

7. Get district by code

```dart
District? district = LocationData.district('cot');
```

8. Get neighborhood by code

```dart
Neighborhood? neighborhood = LocationData.neighborhood('cot');
```

9. Get towns of department

```dart
List<Town> towns = LocationData.townsOfDepartment('cot', sortBy: 'asc');
```

10. Get districts of town

```dart
List<District> districts = LocationData.districtsOfTown('cot', sortBy: 'asc');
```

11. Get neighborhoods of district

```dart
List<Neighborhood> neighborhoods = LocationData.neighborhoodsOfDistrict('cot', sortBy: 'asc');
```

12. Search data

```dart
List<LocationEntity> result = LocationData.searchData('cot', sortBy: 'asc');
```

13. Search departments

```dart
List<Department> result = LocationData.searchDepartments('cot', sortBy: 'asc');
```

14. Search towns

```dart
List<Town> result = LocationData.searchTowns('cot', sortBy: 'asc');
```

15. Search districts

```dart
List<District> result = LocationData.searchDistricts('cot', sortBy: 'asc');
```

16. Search neighborhoods

```dart
List<Neighborhood> result = LocationData.searchNeighborhoods('cot', sortBy: 'asc');
```


Data Model:

1. Base LocationEntity

```dart
abstract class LocationEntity {
  String code;
  String name;

  LocationEntity({
    required this.code,
    required this.name,
  });
}
```

2. Department

```dart
class Department implements LocationEntity {
  @override
  final String code;
  @override
  final String name;

  Department({
    required this.code,
    required this.name,
  });
}
```

3. Town

```dart
class Town implements LocationEntity {
  @override
  final String code;
  @override
  final String name;
  final String departmentCode;

  Town({
    required this.code,
    required this.name,
    required this.departmentCode,
  });
}
```

4. District

```dart
class District implements LocationEntity {
  @override
  final String code;
  @override
  final String name;
  final String townCode;

  District({
    required this.code,
    required this.name,
    required this.townCode,
  });
}
```

5. Neighborhood

```dart
class Neighborhood implements LocationEntity {
  @override
  final String code;
  @override
  final String name;
  final String districtCode;

  Neighborhood({
    required this.code,
    required this.name,
    required this.districtCode,
  });
}
```

## Disclaimer
Please note that the dataset used is not official. It is based on the work done by [Junior Gantin](https://github.com/nioperas06) at [this repo](https://github.com/nioperas06/bj-decoupage-territorial).


## License
Bj Location Data is crafted with ❤️ by [Dah-Kenangnon Justin](https://dah-kenangnon.com) and is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

These person has helped me for cleaning the data and making it easier to use in dart and javascript:

- Big thanks to [Jude AGBODOYETIN](https://github.com/Jude200)
- Big thanks to [Yanel Aïna](https://github.com/yanelaina)
