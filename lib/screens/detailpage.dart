import 'package:dispaly_app/screens/widget/custumrow.dart';
import 'package:dispaly_app/utils/color.dart';
import 'package:dispaly_app/utils/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:dispaly_app/model/usermodel.dart';

class DetailPage extends StatelessWidget {
  final UserModel userModels;

  DetailPage({
    Key? key,
    required this.userModels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (() {
              Navigator.pushNamed(context, RouteName.homechUrl);
            }),
            child: const Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
        title: Text("${userModels.name} detail's"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MyColor.darkBlack,
                        ),
                        padding: EdgeInsets.all(7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustumRow(
                              text1: 'id',
                              text2: '${userModels.id}',
                            ),
                            CustumRow(
                              text1: 'username',
                              text2: '${userModels.username}',
                            ),
                            CustumRow(
                              text1: 'Name',
                              text2: '${userModels.name}',
                            ),
                            CustumRow(
                              text1: 'Email',
                              text2: '${userModels.email}',
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


