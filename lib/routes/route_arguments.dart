import 'package:flutter/material.dart';
import 'package:tempo_contacts/views/views.dart';

class RouteArguments {
  RouteArguments._();

  static Widget misTypedArgsRoute<T>(Object args) {
    return PageNotFoundScreen();
  }
}

class UserContactScreenArgs {
  final String? name;
  final String? contactNumber;
  final String? imageUrl;
  UserContactScreenArgs({this.name, this.contactNumber, this.imageUrl});
}
