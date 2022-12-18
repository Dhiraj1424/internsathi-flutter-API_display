import 'package:dispaly_app/model/usermodel.dart';
import 'package:dispaly_app/services/apiservice.dart';
import 'package:flutter/cupertino.dart';

class UserProvider with ChangeNotifier{
List<UserModel> mylist=[];

getData()async{
mylist=await ApiService().getUser1();
notifyListeners();

}


}