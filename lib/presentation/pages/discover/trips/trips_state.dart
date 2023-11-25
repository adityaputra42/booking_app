import '../../../../config/config.dart';
import '../../../../data/model/trips/Trip.dart';

class TripsState {
   List<Trip> yourRoomies = [];
  List<Trip> otherMatches = [];
  HttpStateStatus status = HttpStateStatus.initial;

  TripsState init() {
    return TripsState();
  }

  TripsState clone() {
    return TripsState();
  }
}
