import 'dart:convert';

import 'package:booking_app/config/config.dart';
import 'package:booking_app/data/endpoint/endpoint.dart';
import 'package:booking_app/domain/repository/repository.dart';

class TripController implements TripsRepository {
  final ApiClient _client = ApiClient();

  @override
  Future<BaseResponse> detailTrip(int id) async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse("${Endpoint.trips}/id"),
    );
    if (response.statusCode > 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.statusCode.toString());
    }

    return baseResponse;
  }

  @override
  Future<BaseResponse> getTrips() async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(Endpoint.trips),
    );
    if (response.statusCode > 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.statusCode.toString());
    }

    return baseResponse;
  }
}
