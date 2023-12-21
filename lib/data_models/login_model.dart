class LoginModel {
  int responseCode;
  String message;
  String status;
  Data data;

  LoginModel(
      {required this.responseCode,
      required this.message,
      required this.status,
      required this.data});

  factory LoginModel.fromMap(Map<String, dynamic> json) {
    return LoginModel(
      responseCode: json['response_code'],
      message: json['message'],
      status: json['status'],
      data: Data.fromMap(json['data']),
    );
  }
}

class Data {
  String token;
  User user;

  Data({
    required this.token,
    required this.user,
  });

  factory Data.fromMap(Map<String, dynamic> json) {
    return Data(
      token: json['token'],
      user: User.fromMap(json['user']),
    );
  }
}

class User {
  String userEmail;
  String domain;
  String userId;

  User({
    required this.userEmail,
    required this.domain,
    required this.userId,
  });

  factory User.fromMap(Map<String, dynamic> json) {
    return User(
      userEmail: json['user_email'],
      domain: json['domain'],
      userId: json['user_id'],
    );
  }
}
