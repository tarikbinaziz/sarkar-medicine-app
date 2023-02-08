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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
     // extendBody: true,
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar:
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
                 // padding: EdgeInsets.all(4),
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
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(icBag,color: mainColor),
                    )
                ),
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
                  // padding: EdgeInsets.all(4),
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
                    child:Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(icUploadRx,),
                    )

                ),
                title: 'Upload RX'),
            TabItem(
                icon: Container(
                   // padding: EdgeInsets.all(4),
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
                    child:Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(icTruckOrder),
                    )
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

