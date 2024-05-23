import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientModel {
  final int id;
  final String name;
  final DateTime dateOfBirth;
  final String phone;
  final String nik;
  final String gender;
  final int userId;

  PatientModel({
    required this.id,
    required this.name,
    required this.dateOfBirth,
    required this.phone,
    required this.nik,
    required this.gender,
    required this.userId,
  });

  factory PatientModel.fromJson(Map<String, dynamic> json) {
    return PatientModel(
      id: json['id'],
      name: json['name'],
      dateOfBirth: DateTime.parse(json['date_of_birth']),
      phone: json['phone'],
      nik: json['nik'],
      gender: json['gender'],
      userId: json['user_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'date_of_birth': dateOfBirth.toIso8601String(),
      'phone': phone,
      'nik': nik,
      'gender': gender,
      'user_id': userId,
    };
  }
}

class PatientCubit extends Cubit<PatientModel?> {
  PatientCubit() : super(null);

  Future<void> createPatient(PatientModel patient) async {
    final response =
        await http.post(Uri.parse('http://127.0.0.1:8000/patients/'),
            headers: {
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(patient.toJson()));

    if (response.statusCode == 201) {
      PatientModel patient = PatientModel.fromJson(json.decode(response.body));
      emit(patient);
    } else {
      throw Exception('Failed to create patient');
    }
  }
}