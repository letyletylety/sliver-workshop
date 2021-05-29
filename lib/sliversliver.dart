import 'package:flutter/material.dart';

class SliverSliverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SliverSliver(),
      ),
    );
  }
}

class SliverSliver extends StatelessWidget {
  final data = "abcdefghi".split('');

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            height: 50.0,
            color: Colors.red[(index) * 100],
            child: Center(
              child: Text(
                data[index],
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.w300),
              ),
            ),
          );
        },
        childCount: data.length,
      ),
    );
  }
}

// class SliverSliver extends StatelessWidget {
//   final data = "abcdefghi".split('');

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: data.length,
//       itemBuilder: (context, index) {
//         return Container(
//           height: 50.0,
//           color: Colors.red[(index) * 100],
//           child: Center(
//             child: Text(
//               data[index],
//               style: TextStyle(
//                   fontSize: 24.0,
//                   color: Colors.black87,
//                   fontWeight: FontWeight.w300),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
