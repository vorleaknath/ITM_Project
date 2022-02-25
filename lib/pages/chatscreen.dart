import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 27,
          ),
          // back to homepage
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 2,
        title: const Text(
          "MinamiFuji",
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 75,
            padding: const EdgeInsets.only(top: 10, left:10 ),
            decoration:  const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0,-1),
                  blurRadius: 2.0,
                ),
              ]         
              ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.attachment,
                      color: Colors.black54,
                      // size: 20,
                    )),
                Expanded(
                  child: Container(
                    height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 15),
                        hintText: "Aa",
                        fillColor: const Color(0xffF3ECEC),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        )),
                  ),
                )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.black54,
                      // size: 27,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
