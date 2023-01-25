// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:medicine_app/consts/consts.dart';
// import 'package:nb_utils/nb_utils.dart';
// import '../../../consts/colors.dart';
// import '../../../widgets/custom_appBar.dart';
//
// class TruckOrderScreen extends StatefulWidget {
//   const TrackOrderScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TrackOrderScreen> createState() => _TrackOrderScreenState();
// }
//
// class _TrackOrderScreenState extends State<TrackOrderScreen> {
//
//   // GoogleMapController? mapController; //contrller for Google map
//   // // ignore: prefer_collection_literals
//   // Set<Marker> markers = Set(); //markers for google map
//   // LatLng showLocation = const LatLng(27.7089427, 85.3086209);
//   //
//   // @override
//   // void initState() {
//   //   markers.add(Marker(
//   //     //add marker on google map
//   //     markerId: MarkerId(showLocation.toString()),
//   //     position: showLocation, //position of marker
//   //     infoWindow: const InfoWindow(
//   //       //popup info
//   //       title: 'Your Current Location',
//   //       snippet: 'Set it as Delivery Address',
//   //     ),
//   //     icon: BitmapDescriptor.defaultMarker, //Icon for Marker
//   //   ));
//   //   super.initState();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: customAppBar(title: truckOrder),
//       body:
//       // Stack(
//       //   alignment: Alignment.bottomCenter,
//       //   children: [
//       //     // GoogleMap(
//       //     //   //Map widget from google_maps_flutter package
//       //     //   zoomGesturesEnabled: true,
//       //     //   //enable Zoom in, out on map
//       //     //   initialCameraPosition: CameraPosition(
//       //     //     //innital position in map
//       //     //     target: showLocation, //initial position
//       //     //     zoom: 10.0, //initial zoom level
//       //     //   ),
//       //     //   markers: markers,
//       //     //   //markers to show on map
//       //     //   mapType: MapType.normal,
//       //     //   //map type
//       //     //   onMapCreated: (controller) {
//       //     //     //method called when map is created
//       //     //     setState(() {
//       //     //       mapController = controller;
//       //     //     });
//       //     //   },
//       //     // ),
//       //     // Container(
//       //     //   height: context.height() / 2,
//       //     //   decoration: BoxDecoration(
//       //     //       borderRadius: BorderRadius.only(
//       //     //         topLeft: Radius.circular(35),
//       //     //         topRight: Radius.circular(35),
//       //     //       ),
//       //     //       color: mainColor),
//       //     //   child: Padding(
//       //     //     padding: const EdgeInsets.only(top: 8.0),
//       //     //     child: ListTile(
//       //     //       leading: CircleAvatar(
//       //     //         backgroundImage:
//       //     //             AssetImage("assets/images/order-confirm.png"),
//       //     //         radius: 30,
//       //     //       ),
//       //     //       title: Text(
//       //     //         "Ibne Riead",
//       //     //         style: TextStyle(
//       //     //             fontWeight: FontWeight.bold, color: Colors.white),
//       //     //       ),
//       //     //       subtitle: Text(
//       //     //         "Pharmecy Courier",
//       //     //         style: TextStyle(
//       //     //             fontWeight: FontWeight.w400, color: Colors.white),
//       //     //       ),
//       //     //       trailing: Row(
//       //     //         mainAxisAlignment: MainAxisAlignment.end,
//       //     //         mainAxisSize: MainAxisSize.min,
//       //     //         children: [
//       //     //           Icon(
//       //     //             Icons.star,
//       //     //             color: golden,
//       //     //           ),
//       //     //           Text(
//       //     //             " 5.0",
//       //     //             style: TextStyle(
//       //     //                 fontWeight: FontWeight.w400, color: Colors.white),
//       //     //           ),
//       //     //           Text(
//       //     //             " (27)",
//       //     //             style: TextStyle(
//       //     //                 fontWeight: FontWeight.w400,
//       //     //                 color: Colors.white.withOpacity(0.6)),
//       //     //           ),
//       //     //         ],
//       //     //       ),
//       //     //     ),
//       //     //   ),
//       //     // ),
//       //     // Container(
//       //     //   height: context.height() / 2.65,
//       //     //   decoration: BoxDecoration(
//       //     //       borderRadius: BorderRadius.only(
//       //     //         topLeft: Radius.circular(35),
//       //     //         topRight: Radius.circular(35),
//       //     //       ),
//       //     //       color: Colors.white),
//       //     //   child: Padding(
//       //     //     padding: const EdgeInsets.all(10),
//       //     //     child: Column(
//       //     //       children: [
//       //     //         ListTile(
//       //     //           contentPadding: EdgeInsets.zero,
//       //     //           leading: Container(
//       //     //             padding: const EdgeInsets.all(10),
//       //     //             decoration: BoxDecoration(
//       //     //               borderRadius: BorderRadius.circular(50),
//       //     //               color: tittleColor.withOpacity(0.10),
//       //     //             ),
//       //     //             child: Icon(
//       //     //               MdiIcons.locationEnter,
//       //     //               color: mainColor,
//       //     //             ),
//       //     //           ),
//       //     //           title: Text(
//       //     //             "Addrass",
//       //     //             style: TextStyle(color: darkFontGrey),
//       //     //           ),
//       //     //           subtitle: Text(
//       //     //             "421 Duke street, M54ader",
//       //     //             style: TextStyle(color: tittleColor),
//       //     //           ),
//       //     //         ),
//       //     //         ListTile(
//       //     //           contentPadding: EdgeInsets.zero,
//       //     //           leading: Container(
//       //     //             padding: const EdgeInsets.all(10),
//       //     //             decoration: BoxDecoration(
//       //     //               borderRadius: BorderRadius.circular(50),
//       //     //               color: golden.withOpacity(0.10),
//       //     //             ),
//       //     //             child: Icon(
//       //     //               MdiIcons.timer,
//       //     //               color: mainColor,
//       //     //             ),
//       //     //           ),
//       //     //           title: Text(
//       //     //             "Delivery Time",
//       //     //             style: TextStyle(color: darkFontGrey),
//       //     //           ),
//       //     //           subtitle: Text(
//       //     //             "20-30 minutes",
//       //     //             style: TextStyle(color: tittleColor),
//       //     //           ),
//       //     //         ),
//       //     //         ListTile(
//       //     //           contentPadding: EdgeInsets.zero,
//       //     //           leading: Container(
//       //     //             padding: const EdgeInsets.all(10),
//       //     //             decoration: BoxDecoration(
//       //     //               borderRadius: BorderRadius.circular(50),
//       //     //               color: golden.withOpacity(0.10),
//       //     //             ),
//       //     //             child: Icon(
//       //     //               Icons.shield,
//       //     //               color: golden,
//       //     //             ),
//       //     //           ),
//       //     //           title: Text(
//       //     //             "Order#",
//       //     //             style: TextStyle(
//       //     //                 fontWeight: FontWeight.w400, color: darkFontGrey),
//       //     //           ),
//       //     //           subtitle: Text(
//       //     //             "15462",
//       //     //             style: TextStyle(
//       //     //                 fontWeight: FontWeight.w400, color: tittleColor),
//       //     //           ),
//       //     //         ),
//       //     //       ],
//       //     //     ),
//       //     //   ),
//       //     // ),
//       //   ],
//       // ),
//       Column(children: [
//         Text(checkYourOrderStatus,style: TextStyle(color: tittleColor),)
//       ],)
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:medicine_app/widgets/Custom%20Appbar/custom_appBar.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../consts/colors.dart';
import '../../../consts/strings.dart';
import '../../../widgets/button_widget.dart';
import '../Add Address/my_address.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: trackOrder),
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.all(16.0),
        //   child: ourButton(tittle: trackOrder,onPress: () {
        //
        //   }),
        // ),

        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                checkYourOrderStatus,
                style:
                    TextStyle(color: titleColor, fontWeight: FontWeight.bold),
              ),
              16.heightBox,
              AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                  hintText: orderCodeHint,
                  label: Text(orderCodeLabel),
                  hintStyle: TextStyle(color: textFieldGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor)),
                ),
              ),
              30.heightBox,
              Center(
                child: ourButton(tittle: trackOrder,onPress: () {
                }),
              ),
            ],
          ),
        ));
  }
}
