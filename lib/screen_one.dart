import 'package:flutter/material.dart';
class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen one"),
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: ( context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.red,
            height: 100,
            width: double.infinity,
            child: Text("Screen on ${index}"),
          ),
        );
      }),
    );
  }
}
