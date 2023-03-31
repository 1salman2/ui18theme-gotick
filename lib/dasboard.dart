// import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:ui18theme/book_flight.dart';
//
// class Dashboard extends StatefulWidget {
//   const Dashboard({Key? key}) : super(key: key);
//
//   @override
//   State<Dashboard> createState() => _DashboardState();
// }
//
// class _DashboardState extends State<Dashboard> {
//
//   int _selectedIndex = 0;
//   //New
// //New
//   void _onItemTapped(int index) {
//   setState(() {
//   _selectedIndex = index;
//   });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      // resizeToAvoidBottomInset: false,
//       body: currentScreen(),
//       bottomNavigationBar:  BottomNavigationBar(
//         fixedColor: Colors.blue,
//         unselectedIconTheme: const IconThemeData(
//           color: Colors.blue
//         ),
//         backgroundColor: Colors.blueAccent,
//         currentIndex: _selectedIndex,
//         type: BottomNavigationBarType.shifting,//New
//         onTap: _onItemTapped,         //New
//         items:  <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.call),
//             label: 'Calls',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.call),
//             label: 'Calls',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.camera),
//             label: 'Camera',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat),
//             label: 'Chats',
//           ),
//
//         ],
//       ),
//     );
//   }
//
//   currentScreen() {
//     switch (_selectedIndex){
//       case 0:
//         Container();
//         break;
//       case 1:
//         Container();
//         break;
//       case 2:
//         Container();
//         break;
//       default:
//         Container();
//
//     }
//   }
// }
