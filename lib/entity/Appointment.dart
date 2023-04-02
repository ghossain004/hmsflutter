// To parse this JSON data, do
//
//     final appointment = appointmentFromJson(jsonString);

import 'dart:convert';

Appointment appointmentFromJson(String str) => Appointment.fromJson(json.decode(str));

String appointmentToJson(Appointment data) => json.encode(data.toJson());

class Appointment {
  Appointment({
    this.id,
    this.pId,
    this.pType,
    this.apFirstName,
    this.apLastName,
    this.apMobile,
    this.apDate,
    this.apEntryDate,
    this.deptId,
    this.docId,
    this.apLocation,
    this.apGender,
    this.apAge,
    this.apDeseaseDetails,
    this.apStatus,
    this.appointmentuserName,
  });

  int? id;
  dynamic pId;
  String? pType;
  String? apFirstName;
  String? apLastName;
  String? apMobile;
  dynamic apDate;
  dynamic apEntryDate;
  dynamic deptId;
  String? docId;
  String? apLocation;
  String? apGender;
  dynamic apAge;
  String? apDeseaseDetails;
  String? apStatus;
  dynamic appointmentuserName;

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
    id: json["id"],
    pId: json["p_id"],
    pType: json["p_type"],
    apFirstName: json["apFirstName"],
    apLastName: json["apLastName"],
    apMobile: json["apMobile"],
    apDate: json["apDate"],
    apEntryDate: json["apEntryDate"],
    deptId: json["dept_id"],
    docId: json["doc_id"],
    apLocation: json["apLocation"],
    apGender: json["apGender"],
    apAge: json["apAge"],
    apDeseaseDetails: json["apDeseaseDetails"],
    apStatus: json["apStatus"],
    appointmentuserName: json["appointmentuserName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "p_id": pId,
    "p_type": pType,
    "apFirstName": apFirstName,
    "apLastName": apLastName,
    "apMobile": apMobile,
    "apDate": apDate,
    "apEntryDate": apEntryDate,
    "dept_id": deptId,
    "doc_id": docId,
    "apLocation": apLocation,
    "apGender": apGender,
    "apAge": apAge,
    "apDeseaseDetails": apDeseaseDetails,
    "apStatus": apStatus,
    "appointmentuserName": appointmentuserName,
  };
}
