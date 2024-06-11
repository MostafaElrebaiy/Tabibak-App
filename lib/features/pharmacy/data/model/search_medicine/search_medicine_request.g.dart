// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'search_medicine_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMedicineRequest _$SearchMedicineRequestFromJson(
        Map<String, dynamic> json) =>
    SearchMedicineRequest(
      token: json['token'] as String,
      medicineName: json['medicineName'] as String,
    );

Map<String, dynamic> _$SearchMedicineRequestToJson(
        SearchMedicineRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'medicineName': instance.medicineName,
    };
