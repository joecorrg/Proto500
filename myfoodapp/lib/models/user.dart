import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";

  late String id;
  late String name;
  late String email;

  UserModel({required this.id, required this.name, required this.email});

  UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data()!;
    name = data[NAME]!;
    email = data[EMAIL]!;
    id = data[ID]!;
  }
}
