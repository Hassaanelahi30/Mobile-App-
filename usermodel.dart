import 'dart:convert';

class Usermodel {
  final String? uid;
  final String? name;
  final String? email;
  final String? imageurl;

  Usermodel({
    this.uid,
    this.name,
    this.email,
    this.imageurl,
  });

  // Converts the Usermodel to a JSON map
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'imageurl': imageurl,
    };
  }

  // Creates a Usermodel from a JSON map
  factory Usermodel.fromMap(Map<String, dynamic> map) {
    return Usermodel(
      uid: map['uid'] as String?,
      name: map['name'] as String?,
      email: map['email'] as String?,
      imageurl: map['imageurl'] as String?,
    );
  }

  // Converts Usermodel to a JSON string
  String toJson() => json.encode(toMap());

  // Creates a Usermodel from a JSON string
  factory Usermodel.fromJson(String source) =>
      Usermodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Usermodel(uid: $uid, name: $name, email: $email, imageurl: $imageurl)';
  }
}
