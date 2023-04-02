// To parse this JSON data, do
//
//     final payment = paymentFromJson(jsonString);

import 'dart:convert';

Payment paymentFromJson(String str) => Payment.fromJson(json.decode(str));

String paymentToJson(Payment data) => json.encode(data.toJson());

class Payment {
  Payment({
    this.id,
    this.active,
    this.pId,
    this.pName,
    this.deptId,
    this.docId,
    this.admissionDate,
    this.releaseDate,
    this.docCharge,
    this.ambulanceCharge,
    this.cabinCharge,
    this.medCharge,
    this.testCharge,
    this.otCharge,
    this.discount,
    this.totalBill,
  });

  int? id;
  bool? active;
  int? pId;
  String? pName;
  int? deptId;
  int? docId;
  DateTime? admissionDate;
  DateTime? releaseDate;
  int? docCharge;
  int? ambulanceCharge;
  int? cabinCharge;
  int? medCharge;
  int? testCharge;
  int? otCharge;
  int? discount;
  int? totalBill;

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
    id: json["id"],
    active: json["active"],
    pId: json["p_id"],
    pName: json["p_name"],
    deptId: json["dept_id"],
    docId: json["doc_id"],
    admissionDate: json["admission_date"] == null ? null : DateTime.parse(json["admission_date"]),
    releaseDate: json["release_date"] == null ? null : DateTime.parse(json["release_date"]),
    docCharge: json["doc_charge"],
    ambulanceCharge: json["ambulance_charge"],
    cabinCharge: json["cabin_charge"],
    medCharge: json["med_charge"],
    testCharge: json["test_charge"],
    otCharge: json["ot_charge"],
    discount: json["discount"],
    totalBill: json["total_bill"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "active": active,
    "p_id": pId,
    "p_name": pName,
    "dept_id": deptId,
    "doc_id": docId,
    "admission_date": "${admissionDate!.year.toString().padLeft(4, '0')}-${admissionDate!.month.toString().padLeft(2, '0')}-${admissionDate!.day.toString().padLeft(2, '0')}",
    "release_date": "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
    "doc_charge": docCharge,
    "ambulance_charge": ambulanceCharge,
    "cabin_charge": cabinCharge,
    "med_charge": medCharge,
    "test_charge": testCharge,
    "ot_charge": otCharge,
    "discount": discount,
    "total_bill": totalBill,
  };
}
