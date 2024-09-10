// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import '../navigation_drawer/navigation_drawer.dart';
//
//
//
//
//
//
// class VideoGallary extends StatelessWidget {
//   const VideoGallary({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//
//
// class VideoGallery extends StatelessWidget {
//   const VideoGallery({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     DateTime pre_backpress = DateTime.now();
//
//     return WillPopScope(
//       onWillPop: () async {
//         final timegap = DateTime.now().difference(pre_backpress);
//         final cantExit = timegap >= Duration(seconds: 1);
//         pre_backpress = DateTime.now();
//         if (cantExit) {
//           final message = 'Press back again to exit';
//           Fluttertoast.showToast(msg: message, fontSize: 18);
//
//           return false;
//         } else {
//           Fluttertoast.cancel();
//           exit(0);
//           return true;
//         }
//       },
//       child: Scaffold(
//
//         body: Center(
//
//         ),
//       ),
//     );
//   }
// }
//
//
//
// //Creates list of video players
// class VideoList extends StatefulWidget {
//
//
//   @override
//   _VideoListState createState() => _VideoListState();
// }
//
// class _VideoListState extends State<VideoList> {
//   final List<YoutubePlayerController> _controllers = [
//     'gQDByCdjUXw',
//     'iLnmTe5Q2Qw',
//     '_WoCV4c6XOE',
//     'KmzdUe0RSJo',
//     '6jZDSSZZxjQ',
//     'p2lYr3vM_1w',
//     '7QUtEmBT_-w',
//     '34_PXCzGw1M',
//   ]
//       .map<YoutubePlayerController>(
//         (videoId) => YoutubePlayerController(
//       initialVideoId: videoId,
//       flags: const YoutubePlayerFlags(
//         autoPlay: false,
//       ),
//     ),
//   )
//       .toList();
//
//   late DateTime pre_backpress;
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//         onWillPop: () async {
//           final timegap = DateTime.now().difference(pre_backpress);
//           final cantExit = timegap >= Duration(seconds: 1);
//           pre_backpress = DateTime.now();
//           if (cantExit) {
//             final message = 'Press back again to exit';
//             Fluttertoast.showToast(msg: message, fontSize: 18);
//
//             return false;
//           } else {
//             Fluttertoast.cancel();
//             exit(0);
//             return true;
//           }
//         },
//         child:(
//             Scaffold(
//               drawer: MyDrawer(),
//               appBar: AppBar(
//                 backgroundColor: Colors.blue[200],
//                 title: const Text('Video Gallery'),
//               ),
//               body: ListView.separated(
//                 itemBuilder: (context, index) {
//                 return YoutubePlayer(
//                   key: ObjectKey(_controllers[index]),
//                   controller: _controllers[index],
//                   actionsPadding: const EdgeInsets.only(left: 16.0),
//                   bottomActions: [
//                     CurrentPosition(),
//                     const SizedBox(width: 10.0),
//                     ProgressBar(isExpanded: true),
//                     const SizedBox(width: 10.0),
//                     RemainingDuration(),
//                     FullScreenButton(),
//                   ],
//                 );
//               },
//                itemCount: _controllers.length,
//                separatorBuilder: (context, _) => const SizedBox(height: 10.0),
//             ),
//             )
//         )
//
//     );
//   }
// }
