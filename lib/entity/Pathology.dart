// To parse this JSON data, do
//
//     final pathology = pathologyFromJson(jsonString);

import 'dart:convert';

Pathology pathologyFromJson(String str) => Pathology.fromJson(json.decode(str));

String pathologyToJson(Pathology data) => json.encode(data.toJson());

class Pathology {
  Pathology({
    this.id,
    this.pathologistId,
    this.docId,
    this.pathologyTypeId,
    this.pathologyPrice,
    this.pathologyDesc,
    this.pathologyDate,
    this.patientId,
  });

  int? id;
  dynamic pathologistId;
  dynamic docId;
  dynamic pathologyTypeId;
  int? pathologyPrice;
  dynamic pathologyDesc;
  dynamic pathologyDate;
  dynamic patientId;

  factory Pathology.fromJson(Map<String, dynamic> json) => Pathology(
    id: json["id"],
    pathologistId: json["pathologist_id"],
    docId: json["doc_id"],
    pathologyTypeId: json["pathology_type_id"],
    pathologyPrice: json["pathology_price"],
    pathologyDesc: json["pathology_desc"],
    pathologyDate: json["pathology_date"],
    patientId: json["patient_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "pathologist_id": pathologistId,
    "doc_id": docId,
    "pathology_type_id": pathologyTypeId,
    "pathology_price": pathologyPrice,
    "pathology_desc": pathologyDesc,
    "pathology_date": pathologyDate,
    "patient_id": patientId,
  };
}
