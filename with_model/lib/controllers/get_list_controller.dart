import 'package:with_model/models/get_list_model.dart';
import 'package:with_model/services/Api_class.dart';

List<GetListModel>? ListModel = [];
Future<List<GetListModel>?> get_list_controller() async {
await  ApiServices().Get_list_services().then((values) => {ListModel = values?.cast<GetListModel>()});
  return ListModel;
}
