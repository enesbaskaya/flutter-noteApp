import 'package:flutter/material.dart';

class AddNote extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Note',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          FlatButton(
            onPressed: () {

            },
            child: Text(
              'Save',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom:12.0,left: 10,right: 10),
        child: Column(
          children: [
            Container(
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(hintText: 'Title'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                child: TextField(
                  controller: contentController,
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(hintText: 'Content'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
