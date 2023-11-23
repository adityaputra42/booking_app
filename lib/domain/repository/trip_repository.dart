import '../../config/networking/base_response.dart';

abstract class TripsRepository {
  Future<BaseResponse> detailTrip(int id);

  Future<BaseResponse> getTrips();
}
