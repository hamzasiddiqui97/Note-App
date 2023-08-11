import 'package:flutter/material.dart';

import '../res/strings.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  // toggle Icon
  bool isListView = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppString.appName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                    ),
                  ),
                  IconButton(
                  onPressed:() {
                    setState(() {
                      isListView = !isListView;
                    });
                  } ,
                  icon: Icon(isListView ? Icons.splitscreen_sharp : Icons.grid_view)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
