class UserModel {
  String? name;
  String? surname;
  String? phoneNumber;
  String? email;
  String? userName;
  String? password;

  UserModel({
    this.name,
    this.surname,
    this.phoneNumber,
    this.email,
    this.userName,
    this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'phoneNumber': phoneNumber,
      'email': email,
      'userName': userName,
      'password': password,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      surname: json['surname'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      userName: json['userName'],
      password: json['password'],
    );
  }
}
