import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:untitled/cons/components.dart';


class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {

    var search = TextEditingController();


    Map<MarkerId, Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
 // String googleAPiKey = "Please provide your api key"
  //
  Position? cl;
  StreamSubscription<Position>? positionStream ;
  CameraPosition? _kGooglePlex;
  Future getper() async {
    LocationPermission per;
    bool services;
    services = await Geolocator.isLocationServiceEnabled();
    print(services);

    per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied) {
      per = await Geolocator.requestPermission();
      //
    }

      if(per == true){
        navigateTo(context, Maps());
      }
    print("=======================================");
    print(per);if (per == LocationPermission.always) {
      getLatAndLong();
    }
    return per;
  }
  var lat;
  var long;

  @override
  void initState() {
    getper();
   positionStream = Geolocator.getPositionStream().listen(
            (Position? position) {
          print(position == null ? 'Unknown' : '${position.latitude.toString()}, ${position.longitude.toString()}');
        });
    getLatAndLong();
    setState(() {

    });
    super.initState();
  }

  Future<void> getLatAndLong() async {
    cl = await Geolocator.getCurrentPosition().then((value) => value);
    lat = cl!.latitude;
    long = cl!.longitude;
    _kGooglePlex = CameraPosition(
      target: LatLng(lat, long),
      zoom: 14.4746,
      // flutter _polyline_points
    );
    Marker(markerId: MarkerId("1"), position: LatLng(lat, long));


    setState(() {});
  }

  GoogleMapController? googleMapController;
  Set<Marker>? mymarker = {
  Marker(
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
  markerId: MarkerId("2"), position: LatLng(31.5346247, 34.4682198))

    //31.5216793
    //34.4471064
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor:Color(0xffFF9F0D) ,
        elevation: 0,
      ),
      body: SafeArea(

        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    height:48 ,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      controller: search,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_on,color: Colors.orange),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),

                _kGooglePlex == null
                    ? CircularProgressIndicator()
                    : Container(
                        height: 800,
                        width: double.infinity,
                        child: GoogleMap(
                          myLocationEnabled: true,
                          tiltGesturesEnabled: true,
                          compassEnabled: true,
                          scrollGesturesEnabled: true,
                          zoomGesturesEnabled: true,
                          polylines: Set<Polyline>.of(polylines.values),
                          markers: mymarker!,
                          mapType: MapType.normal,
                          initialCameraPosition: _kGooglePlex!,
                          onMapCreated: (GoogleMapController controller) {
                            googleMapController = controller;
                          },

                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.red, points: polylineCoordinates);
    polylines[id] = polyline;
    setState(() {});
  }

  // getPolyline() async {
  //   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
  //       googleAPiKey,
  //       PointLatLng(_originLatitude, _originLongitude),
  //       PointLatLng(_destLatitude, _destLongitude),
  //       travelMode: TravelMode.driving,);
  //   if (result.points.isNotEmpty) {
  //     result.points.forEach((PointLatLng point) {
  //       polylineCoordinates.add(LatLng(point.latitude, point.longitude));
  //     });
  //   }
  //   addPolyLine();
  // }
}
//AIzaSyC9HSSFtV69pyski3Y1e1Eq2T0Xi-udhpc
