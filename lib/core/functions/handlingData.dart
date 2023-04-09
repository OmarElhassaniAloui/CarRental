import 'package:carrental/core/class/statusrequest.dart';
import 'package:http/http.dart';





handlingData(response) {
  if (response is StatusRequest) {
    return response; 
  } else {
    return StatusRequest.success;
  }
}
