// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:with_model/controllers/get_list_controller.dart';
import 'package:with_model/models/get_list_model.dart';

class GetList extends StatefulWidget {
  GetList({super.key});

  @override
  State<GetList> createState() => _GetListState();
}

class _GetListState extends State<GetList> {
  List<GetListModel>? model;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    model = [];
    getdata();
  }

  getdata() async {
    List<GetListModel>? data = await get_list_controller();
    setState(() {
      model = data;
      loading = false; // Stop loading after data is fetched
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loading
          ? const Center(
              child: CircularProgressIndicator(), // Show loading indicator
            )
          : model == null || model!.isEmpty
              ? const Center(
                  child: Text("No data is available"),
                )
              : ListView.builder(
                  itemCount: model!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: const Color.fromARGB(255, 184, 223, 255),
                      child: ListTile(
                        leading: Text(model![index].postId.toString()),
                        trailing: Text(model![index].id.toString()),
                        subtitle: Text(model![index].body.toString()),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(model![index].name.toString()),
                            Text(model![index].email.toString()),

                          ],
                        )
                      ),
                    );
                  },
                ),
    );
  }
}
