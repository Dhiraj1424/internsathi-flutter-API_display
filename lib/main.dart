import 'package:dispaly_app/provider/userprovider.dart';
import 'package:dispaly_app/screens/home.dart';
import 'package:dispaly_app/screens/splash_screen.dart';
import 'package:dispaly_app/utils/route/route.dart';
import 'package:dispaly_app/utils/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
ChangeNotifierProvider(create: (context) => UserProvider(),)
    ],
    child:MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
//       theme: ThemeData(
// useMaterial3: true,
//         primarySwatch: Colors.blue,
//       ),
theme: ThemeData.dark(
  useMaterial3: true,
   
),
onGenerateRoute: Routes.ongeneratedRoute,
initialRoute:RouteName.splaschUrl,

    ) ,
    );
  }
}

