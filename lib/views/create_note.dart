import 'dart:developer';

import 'package:flutter/material.dart';

class CreateNoteView extends StatefulWidget {
  const CreateNoteView({Key? key}) : super(key: key);

  @override
  State<CreateNoteView> createState() => _CreateNoteViewState();
}

class _CreateNoteViewState extends State<CreateNoteView> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();


  @override
  void dispose() {
    super.dispose();

    /// printing values on console to check textfield work.
    // log(_titleController.text);
    // log(_descriptionController.text);


    _titleController.dispose();
    _descriptionController.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.00),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, size: 40),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Title',


                ),
                style: const TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.bold,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Description',

                ),
                style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal,),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
