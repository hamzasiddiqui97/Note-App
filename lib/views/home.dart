import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:note_app/res/assets.dart';
import 'package:note_app/views/widgets/empty_screen_widget.dart';

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
        floatingActionButton: FloatingActionButton(
          onPressed: (){},

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
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
              const Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: EmptyScreenWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
