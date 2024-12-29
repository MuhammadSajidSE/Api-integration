
import 'package:flutter/material.dart';
import 'package:with_out_model/controller/home_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic datas;
  var bodyscontent = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("API INTEGRATION")),
      ),
      body: Center(
        child: Center(
          child: Text(
            bodyscontent
          ),
          
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        setState(() {
          datas = getsingle_api();
          bodyscontent = datas["body"].toString();
        });
        print(datas["body"].toString());
      }),
    );
  }
}
