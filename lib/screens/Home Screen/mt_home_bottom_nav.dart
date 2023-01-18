
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import '../Upload Prescription/upload_prescription.dart';



class HomeBottomNavBarScreen extends StatefulWidget {
  const HomeBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<HomeBottomNavBarScreen> createState() => _HomeBottomNavBarScreenState();
}

class _HomeBottomNavBarScreenState extends State<HomeBottomNavBarScreen> {
  int _selectedIndex = 2;

   final List<Widget> pages = [
     const MenuScreen(),
     const CartScreen(),
     const HomeScreen(),
    const UploadScreen(),
    const TruckOrderScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: pages.elementAt(_selectedIndex)),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                backgroundColor: bottomNavBg,
                unselectedLabelStyle: TextStyle(color: Colors.red),
                currentIndex: _selectedIndex,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: mainColor,
                unselectedItemColor: mainColor,
                selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                showSelectedLabels: true,
                showUnselectedLabels: true,
                onTap:_onItemTapped ,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Container(
                      //  width: 50,
                        padding: EdgeInsets.symmetric(horizontal:10,vertical: 5),
                        margin: EdgeInsets.only(top: 6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                        color:bottomNavBg,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              offset: Offset(4, 4),
                              color: bottomShadowColorFirst,
                            ),
                            BoxShadow(
                              blurRadius: 10,
                              offset: Offset(-4, -4),
                              color: bottomShadowColorSecond
                            )
                          ]
                        ),
                          child: Icon(Icons.menu_rounded,color: mainColor,)
                      ), label: 'Menu'),
                  BottomNavigationBarItem(
                      icon: Container(
                          padding: EdgeInsets.symmetric(horizontal:10,vertical: 5),
                          margin: EdgeInsets.only(top: 6),

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color:bottomNavBg,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(4, 4),
                                    color: bottomShadowColorFirst
                                ),
                                BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(-4, -4),
                                    color: bottomShadowColorSecond
                                )
                              ]
                          ),

                          child: Icon(Icons.shopping_cart,color: mainColor,)

                      ), label: 'Cart'),
                  BottomNavigationBarItem(
                      icon: Container(
                          width: 70,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color:bottomNavBg,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(4, 4),
                                     inset: true,
                                    color: bottomShadowColorFirst,
                                ),
                                BoxShadow(
                                    blurRadius: 10,
                                     inset: true,
                                    offset: Offset(-4, -4),
                                    color: bottomShadowColorSecond
                                )
                              ]
                          ),

                          child:Image.asset(imgOsudKiniLogo)
                          //Icon(Icons.home_filled,color: mainColor,)
                      
                      ), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Container(
                          padding: EdgeInsets.symmetric(horizontal:10,vertical: 5),
                          margin: EdgeInsets.only(top: 6),

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color:bottomNavBg,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(4, 4),
                                    color: bottomShadowColorFirst
                                ),
                                BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(-4, -4),
                                    color: bottomShadowColorSecond
                                )
                              ]
                          ),

                          child: Icon(Icons.upload,color: mainColor,)), label: 'Upload RX'),
                  BottomNavigationBarItem(
                      icon: Container(
                          padding: EdgeInsets.symmetric(horizontal:10,vertical: 5),
                          margin: EdgeInsets.only(top: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color:bottomNavBg,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(4, 4),
                                    color: bottomShadowColorFirst
                                ),
                                BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(-4, -4),
                                    color: bottomShadowColorSecond
                                )
                              ]
                          ),
                          child: Icon(MdiIcons.truckFast,color: mainColor,)), label: 'Truck order'),

                ],
              ),
            )));
  }
}
