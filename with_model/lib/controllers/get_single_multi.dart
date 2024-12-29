import 'package:with_model/models/get_single_multi.dart';
import 'package:with_model/services/Api_class.dart';

get_single_multi data = get_single_multi();
Future<dynamic> get_single_multi_controller() async {
  await ApiServices()
      .get_single_multi_services()
      .then((values) => {data = values!});
  return data;
}
