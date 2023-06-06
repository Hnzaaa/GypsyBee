import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
 
class MapPage extends StatefulWidget {

  MapPage({super.key, required this.title, })  ; 
   String title;
   

  @override
  MapPageState createState() => MapPageState();

}

class MapPageState extends State<MapPage> {
  int visit = 0;
//   Position? _position;
//     Position? _initialPosition;

//   // Completer<GoogleMapController> _mapControllerCompleter = Completer();
//   Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
//   GoogleMapController _mapController;

//   @override
//   void initState() {
//     super.initState();
//     _position = null;
//     getInitialPosition();
//     // Use this static method to start listening to a stream with position updates
//     Geolocator.getPositionStream(
//       // desiredAccuracy: LocationAccuracy.best,
//       // distanceFilter: 0,
//       // forceAndroidLocationManager: false,
//       // intervalDuration: Duration(milliseconds: 1000),
//     ).listen((position) {
//       if (_mapController != null) {
//         _mapController.animateCamera(
//             CameraUpdate.newCameraPosition(CameraPosition(zoom: 14, target: LatLng(position.latitude, position.longitude))));
//       }
//       setState(() {
//         _position = position;
//       });
//     });
//   }

//   Future<void> getInitialPosition() async {
//     _initialPosition = await Geolocator.getCurrentPosition();
//     _addMarker("You", _initialPosition!);
//   }

//   void _addMarker(var id, Position pos) {
//     final MarkerId markerId = MarkerId(id);

//     // creating a new MARKER
//     final Marker marker = Marker(
//       markerId: markerId,
//       position: LatLng(pos.latitude, pos.longitude),
//       infoWindow: InfoWindow(title: id, snippet: '*'),
//       onTap: () {
//         _onMarkerTapped(markerId);
//       },
//     );

//     setState(() {
//       // adding a new marker to map
//       markers[markerId] = marker;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: _position == null
//           ? Text('Waiting for location . .')
//           : GoogleMap(
//               mapType: MapType.hybrid,
//               markers: Set<Marker>.of(markers.values),
//               initialCameraPosition: CameraPosition(
//                 target: LatLng(_position.latitude, _position.longitude),
//                 zoom: 14,
//               ),
//               onMapCreated: (GoogleMapController controller) {
//                 _mapController = controller;
//               },
//             ),
//     );
//   }

//   void _onMarkerTapped(MarkerId id) {}
// }



  // Save position we get from the Geolocator stream in this variable
    Position? _position; 
  
 int _selectedIndex = 0;
   

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });}



  @override
  void initState() {
    super.initState();
    print(_position);
    // Use this static method to start listening to a stream with position updates
    Geolocator.getPositionStream(locationSettings: const LocationSettings(
       accuracy: LocationAccuracy.bestForNavigation,
       distanceFilter: 0,),
      // forceAndroidLocationManager: false,
      // intervalDuration: const Duration(milliseconds: 1000),
     ).listen((position) {
      setState(() {
        _position = position;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You are located at:',
            ),
            Text(
              '$_position',
            ), 
          ],
        ),
      ),

             
     bottomNavigationBar: Container(
        height: 60,color: const Color.fromARGB(255, 26, 71, 85),
        child: CurvedNavigationBar(
            height: 50,
            backgroundColor: const Color.fromARGB(255, 26, 71, 85),
            color: const Color.fromARGB(255, 26, 71, 85),
            buttonBackgroundColor: Colors.grey.shade300,
            onTap: _onItemTapped,
            items: const <Widget>[
              Icon(Icons.home),
              Icon(Icons.search),
              Icon(Icons.settings),
              Icon(Icons.person)
            ]),)
    );
  }
}