import 'package:flutter/material.dart';
import 'package:with_model/models/multiple_post.dart';
import 'package:with_model/services/Api_class.dart';
import 'package:with_model/models/single_post.dart';

single_post single_model = single_post();
getsinglepostapi() async {
  await ApiServices()
      .GetSinglePost()
      .then((values) => {single_model = values!});
  print(single_model.body.toString());
}

// multiple_post multi_model = multiple_post();
// getmutlpostcontroller() async {
//   await ApiServices()
//       .Getmultiplepost()
//       .then((values) => {multi_model = values!});
//   print(multi_model.body.toString());
// }
