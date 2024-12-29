import 'package:flutter/material.dart';
import 'package:with_model/controllers/get_single_multi.dart';

class SingleMulti extends StatefulWidget {
  const SingleMulti({super.key});

  @override
  State<SingleMulti> createState() => _SingleMultiState();
}

class _SingleMultiState extends State<SingleMulti> {
  dynamic data;
  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    final value = await get_single_multi_controller();
    setState(() {
      data = value;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Text(data.total_pages.toString())
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print(data.support.text.toString());
      }),
    );
  }
}
