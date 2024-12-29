// import 'package:with_out_model/services/API_services.dart';

import 'package:with_out_model/services/API_services.dart';

dynamic data;
Future<dynamic> getsingle_api() {
  ApiServices().getsingle().then((values) => {data = values});
  return data;
}
dynamic dataset = [];
Future<dynamic> getmutipledata() async {
await  ApiServices().getmutiple().then((values) => {dataset = values});
  print(dataset?.length);
  return dataset;
}
