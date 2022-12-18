import 'package:dispaly_app/screens/widget/custumcard.dart';
import 'package:dispaly_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import 'package:dispaly_app/provider/userprovider.dart';
import 'package:dispaly_app/screens/detailpage.dart';

import '../utils/route/route_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final data = Provider.of<UserProvider>(context, listen: false);
    data.getData();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<UserProvider>(context);
    
    return Scaffold(
        body: SafeArea(
      child: data.mylist.isEmpty
          ? const Center(child: SpinKitFadingCircle(color: MyColor.whitecolor))
          : Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    onChanged: ((value) {
                      setState(() {});
                    }),
                    controller: _searchController,
                    decoration: InputDecoration(
                        contentPadding:const EdgeInsets.symmetric(horizontal: 20),
                        hintText: 'Enter a Name',
                        
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: data.mylist.length,
                        itemBuilder: ((context, index) {
                          String name = data.mylist[index].name.toString();

                          if (_searchController.text.isEmpty) {
                            return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailPage(
                                                userModels: data.mylist[index],
                                              ))
                                              );

                                  // Navigator.pushNamed(context, RouteName.detailhUrl,
                                  // arguments: data.mylist[index]
                                  // );
                                },
                                child: CustumCard(
                                    id: data.mylist[index].id!.toInt(),
                                    name: data.mylist[index].name.toString()));
                          } else if (name
                              .toLowerCase()
                              .contains(_searchController.text.toLowerCase())) {
                            return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailPage(
                                                userModels: data.mylist[index],
                                              )));
                                },
                                child: CustumCard(
                                  id: data.mylist[index].id!.toInt(),
                                  name: data.mylist[index].name.toString(),
                                ));
                          } else {
                            return Container();
                          }
                        })))
              ],
            ),
    ));
  }
}


