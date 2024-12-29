import 'package:flutter/material.dart';
import 'package:with_out_model/controller/home_controller.dart';

class MultipleDataset extends StatefulWidget {
  const MultipleDataset({super.key});

  @override
  State<MultipleDataset> createState() => _MultipleDatasetState();
}

class _MultipleDatasetState extends State<MultipleDataset> {
  dynamic data = [];
  bool loading = true;
  @override
  void initState() {
    super.initState();
    data = [];
    loading = true;
    getdata();
  }

  getdata() async {
    final result = await getmutipledata() as List?;
    setState(() {
      data = result;
      loading = false;
      print(data?.length);
      print("sajid");
      print(data![2]["body"].toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: loading
            ? Center(
                child: CircleAvatar(),
              )
            : data == null || data!.isEmpty
                ? Center(
                    child: Text("Nothing to display"),
                  )
                : ListView.builder(
                    itemCount: data?.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(data![index]["body"].toString()),
                        ),
                      );
                    }));
  }
}
