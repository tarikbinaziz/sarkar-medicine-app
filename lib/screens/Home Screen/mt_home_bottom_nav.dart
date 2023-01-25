import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medicine_app/consts/consts.dart';
import 'package:flutter/material.dart';
import '../../widgets/style.dart';
import '../Menu Screen/Truck Order/truck_order.dart';
import '../Upload Prescription/upload_prescription.dart';

class HomeBottomNavBarScreen extends StatefulWidget {
  const HomeBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<HomeBottomNavBarScreen> createState() => _HomeBottomNavBarScreenState();
}

class _HomeBottomNavBarScreenState extends State<HomeBottomNavBarScreen> {
  int _selectedIndex = 2;
  int visit = 0;
  final List<Widget> pages = [
    const MenuScreen(),
    const CartScreen(),
    const HomeScreen(),
    const UploadScreen(),
    const TrackOrderScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     // extendBody: true,
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar:
          // ClipRRect(
          //   borderRadius: const BorderRadius.only(
          //     topRight: Radius.circular(30),
          //     topLeft: Radius.circular(30),
          //   ),
          //   child: BottomNavigationBar(
          //     backgroundColor: bottomNavBg,
          //     unselectedLabelStyle: TextStyle(color: Colors.red),
          //     currentIndex: _selectedIndex,
          //     type: BottomNavigationBarType.fixed,
          //     selectedItemColor: mainColor,
          //     unselectedItemColor: mainColor,
          //     selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          //     showSelectedLabels: true,
          //     showUnselectedLabels: true,
          //     onTap: _onItemTapped,
          //     items: <BottomNavigationBarItem>[
          //       BottomNavigationBarItem(
          //           icon: Container(
          //               margin: EdgeInsets.only(top: 12),
          //               padding:
          //                   EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(16),
          //                   color: bottomNavBg,
          //                   boxShadow: [
          //                     BoxShadow(
          //                       blurRadius: 10,
          //                       offset: Offset(4, 4),
          //                       color: bottomShadowColorFirst,
          //                     ),
          //                     BoxShadow(
          //                         blurRadius: 10,
          //                         offset: Offset(-4, -4),
          //                         color: bottomShadowColorSecond)
          //                   ]),
          //               child: Icon(
          //                 Icons.menu_rounded,
          //                 color: mainColor,
          //               )),
          //           label: 'Menu'),
          //       BottomNavigationBarItem(
          //           icon: Container(
          //               margin: EdgeInsets.only(top: 12),
          //               padding:
          //                   EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          //               //  margin: EdgeInsets.only(top: 6),
          //
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(18),
          //                   color: bottomNavBg,
          //                   boxShadow: [
          //                     BoxShadow(
          //                         blurRadius: 10,
          //                         offset: Offset(4, 4),
          //                         color: bottomShadowColorFirst),
          //                     BoxShadow(
          //                         blurRadius: 10,
          //                         offset: Offset(-4, -4),
          //                         color: bottomShadowColorSecond)
          //                   ]),
          //               child: Icon(
          //                 Icons.shopping_cart,
          //                 color: mainColor,
          //               )),
          //           label: 'Cart'),
          //       BottomNavigationBarItem(
          //           icon: Container(
          //               //   width: 60,
          //               //  margin: EdgeInsets.only(top: 4),
          //               decoration: BoxDecoration(
          //                   //   borderRadius: BorderRadius.circular(18),
          //                   shape: BoxShape.circle,
          //                   color: Colors.white,
          //                   boxShadow: [
          //                     BoxShadow(
          //                       blurRadius: 10,
          //                       offset: Offset(4, 4),
          //                       // inset: true,
          //                       color: bottomShadowColorFirst,
          //                     ),
          //                     BoxShadow(
          //                         blurRadius: 10,
          //                         //  inset: true,
          //                         offset: Offset(-4, -4),
          //                         color: bottomShadowColorSecond)
          //                   ]),
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Image.asset(
          //                   imgOsudKiniLogo,
          //                   width: 50,
          //                 ),
          //               )
          //               //Icon(Icons.home_filled,color: mainColor,)
          //
          //               ),
          //           label: 'Home'),
          //       BottomNavigationBarItem(
          //           icon: Container(
          //               padding:
          //                   EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          //               margin: EdgeInsets.only(top: 12),
          //
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(18),
          //                   color: bottomNavBg,
          //                   boxShadow: [
          //                     BoxShadow(
          //                         blurRadius: 10,
          //                         offset: Offset(4, 4),
          //                         color: bottomShadowColorFirst),
          //                     BoxShadow(
          //                         blurRadius: 10,
          //                         offset: Offset(-4, -4),
          //                         color: bottomShadowColorSecond)
          //                   ]),
          //               child: Icon(
          //                 Icons.upload,
          //                 color: mainColor,
          //               )),
          //           label: 'Upload RX'),
          //       BottomNavigationBarItem(
          //           icon: Container(
          //               padding:
          //                   EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          //               margin: EdgeInsets.only(top: 12),
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(18),
          //                   color: bottomNavBg,
          //                   boxShadow: [
          //                     BoxShadow(
          //                         blurRadius: 10,
          //                         offset: Offset(4, 4),
          //                         color: bottomShadowColorFirst),
          //                     BoxShadow(
          //                         blurRadius: 10,
          //                         offset: Offset(-4, -4),
          //                         color: bottomShadowColorSecond)
          //                   ]),
          //               child: Icon(
          //                 MdiIcons.truckFast,
          //                 color: mainColor,
          //               )),
          //           label: 'Truck order'),
          //     ],
          //   ),
          // )
          StyleProvider(
            style: Style(),
            child: ConvexAppBar(
        backgroundColor: bottomNavBg,
       style: TabStyle.react,
      //cornerRadius: 20,
        shadowColor: Colors.black38.withOpacity(0.3),
        color: Colors.black.withOpacity(0.6),
        activeColor: titleColor,
        items: [
            TabItem(
                icon: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: bottomNavBg,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(4, 4),
                            color: bottomShadowColorFirst,
                          ),
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset(-4, -4),
                              color: bottomShadowColorSecond)
                        ]),
                    child: Icon(
                      Icons.menu_rounded,
                      color: mainColor,

                    )),
                title: "Menu"
            ),
            TabItem(
                icon: Container(
                    //  margin: EdgeInsets.only(top: 6),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: bottomNavBg,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset(4, 4),
                              color: bottomShadowColorFirst),
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset(-4, -4),
                              color: bottomShadowColorSecond)
                        ]),
                    child: Icon(
                      Icons.shopping_cart,
                      color: mainColor,

                    )),
                title: 'Cart'),
            TabItem(
                icon: Container(
                    //   width: 60,
                    //  margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(18),
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(4, 4),
                            // inset: true,
                            color: bottomShadowColorFirst,
                          ),
                          BoxShadow(
                              blurRadius: 10,
                              //  inset: true,
                              offset: Offset(-4, -4),
                              color: bottomShadowColorSecond)
                        ]),
                    child: Image.asset(
                      imgOsudKiniRoundLogo,
                      width: 80,
                    )
                    //Icon(Icons.home_filled,color: mainColor,)

                    ),
                title: 'Home'),
            TabItem(
                icon: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: bottomNavBg,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset(4, 4),
                              color: bottomShadowColorFirst),
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset(-4, -4),
                              color: bottomShadowColorSecond)
                        ]),
                    child:Image.asset(icUploadRx)

                ),
                title: 'Upload RX'),
            TabItem(
                icon: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: bottomNavBg,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset(4, 4),
                              color: bottomShadowColorFirst),
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset(-4, -4),
                              color: bottomShadowColorSecond)
                        ]),
                    child:Image.asset(icTruckOrder)
                ),
                title: 'Truck order'),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
          ),
    );
  }

}

