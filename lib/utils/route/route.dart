import 'package:dispaly_app/model/usermodel.dart';
import 'package:dispaly_app/screens/detailpage.dart';
import 'package:dispaly_app/screens/home.dart';
import 'package:dispaly_app/screens/splash_screen.dart';
import 'package:dispaly_app/utils/route/route_name.dart';
import 'package:flutter/material.dart';

class Routes{

static Route<dynamic> ongeneratedRoute(RouteSettings routeSettings){
switch(routeSettings.name){
case RouteName.splaschUrl:
return MaterialPageRoute(builder: ((context) => SplashScreen()));
case RouteName.homechUrl:
return MaterialPageRoute(builder: ((context) => HomePage()));
 case RouteName.homechUrl:
  
// return MaterialPageRoute(builder: ((context) => DetailPage(
// email: '',
// name: '',
// phone: '',
// username: '',

// )));
    UserModel data = routeSettings.arguments as UserModel;

return MaterialPageRoute(builder: ((context) => DetailPage(
userModels: data,

)));
default:
return MaterialPageRoute(builder: (context) =>const Scaffold(
  body: Center(
    child: Text('Route not found'),
  ),
));


}


}

}