import 'dart:convert';

import 'package:carrental/core/class/statusrequest.dart';
import 'package:carrental/core/functions/checkInternet.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class Crud {
// had lfunction katsift data (post)
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
  try {
    if (await checkInternet()) {
      var response = await http.post(Uri.parse(linkurl), body: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody = jsonDecode(response.body);
        return Right(responsebody);
      } else {
        return Left(StatusRequest.serverFailure);
      }
    } else {
      return Left(StatusRequest.offlineFailure);
    }
  } catch ( e ) {
    return Left(StatusRequest.serverFailure);
  }
}



}
