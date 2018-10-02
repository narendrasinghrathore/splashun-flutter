import 'dart:_http';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:splashun_flutter/models/home.model.dart';
import 'package:splashun_flutter/services/api-url.constant.dart';

class HttpService {
  final String _accessKey = ApiUrl.accessKey;
  final String _listImagesUrl = ApiUrl.url + '/photos';
  Future<Response> fetchImages(PhotosParam body) {
    return http.get(
      _listImagesUrl +
          '?per_page=' +
          body.perPage.toString() +
          '&page=' +
          body.page.toString() +
          '&order_by=' +
          body.orderBy.toString(),
      headers: {HttpHeaders.authorizationHeader: "Client-ID $_accessKey"},
    );
  }

  
}
