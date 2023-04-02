// To parse this JSON data, do
//
//     final doctorDepartment = doctorDepartmentFromJson(jsonString);

import 'dart:convert';

DoctorDepartment doctorDepartmentFromJson(String str) => DoctorDepartment.fromJson(json.decode(str));

String doctorDepartmentToJson(DoctorDepartment data) => json.encode(data.toJson());

class DoctorDepartment {
  DoctorDepartment({
    this.id,
    this.deptName,
    this.deptManager,
  });

  int? id;
  String? deptName;
  String? deptManager;

  factory DoctorDepartment.fromJson(Map<String, dynamic> json) => DoctorDepartment(
    id: json["id"],
    deptName: json["dept_name"],
    deptManager: json["dept_manager"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "dept_name": deptName,
    "dept_manager": deptManager,
  };
}
