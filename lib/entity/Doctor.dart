// To parse this JSON data, do
//
//     final doctor = doctorFromJson(jsonString);

import 'dart:convert';

Doctor doctorFromJson(String str) => Doctor.fromJson(json.decode(str));

String doctorToJson(Doctor data) => json.encode(data.toJson());

class Doctor {
  Doctor({
    this.id,
    this.firstName,
    this.lastName,
    this.deptId,
    this.degree,
    this.specialization,
    this.visitCharge,
  });

  int? id;
  String? firstName;
  String? lastName;
  int? deptId;
  String? degree;
  String? specialization;
  int? visitCharge;

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    deptId: json["dept_id"],
    degree: json["degree"],
    specialization: json["specialization"],
    visitCharge: json["visit_charge"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "dept_id": deptId,
    "degree": degree,
    "specialization": specialization,
    "visit_charge": visitCharge,
  };
}
