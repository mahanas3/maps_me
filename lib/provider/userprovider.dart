import 'package:flutter/material.dart';
import 'package:maps_me/api_services/api_functions.dart';
import 'package:maps_me/model/usermodel.dart';

class UserProvider extends ChangeNotifier{

  List<User>? userDetails;


  void details()async{
    userDetails=await Api().getDetails();
    notifyListeners();
  }

}