import 'package:flutter/material.dart';
import 'package:club/UI/chart.dart';
class CommentWidget extends StatelessWidget {
  const CommentWidget({
    Key key,
    @required Size media,
  })  : _media = media,
        super(key: key);

  final Size _media;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(25),
      color: Colors.lightBlue[50],
      child: Container(
        padding: EdgeInsets.all(20),
        height: _media.height / 1.8,
        width: _media.width / 3.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Member Distribution',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
              ),
            ),
            PieChartSample2(),
          ],
        ),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     Text(
        //       'Recent Comments',
        //       style: cardTitleTextStyle,
        //     ),
        //     SizedBox(height: 10),
        //     Text(
        //       'Tasks by Top users from Widhya',
        //       style: TextStyle(fontSize: 13, color: Colors.grey),
        //     ),
        //     SizedBox(height: 20),
        //     Expanded(
        //       child: ListView.builder(
        //         shrinkWrap: true,
        //         itemCount: commentList.length,
        //         itemBuilder: (context, index) {
        //           return Padding(
        //             padding: const EdgeInsets.only(bottom: 8.0),
        //             child: ListTile(
        //               dense: true,
        //               leading: CircleAvatar(
        //                 backgroundImage: AssetImage(commentList[index].image),
        //                 radius: 30,
        //               ),
        //               title: Text(
        //                 commentList[index].name,
        //                 style: TextStyle(fontWeight: FontWeight.bold),
        //               ),
        //               subtitle: Padding(
        //                 padding: EdgeInsets.only(top: 8.0),
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: <Widget>[
        //                     Text(
        //                       '${commentList[index].comment}',
        //                       style: TextStyle(fontSize: 12),
        //                     ),
        //                     SizedBox(height: 5),
        //                     Row(
        //                       children: <Widget>[
        //                         Text(
        //                           '${commentList[index].date}',
        //                           style: TextStyle(fontSize: 12),
        //                         ),
        //                         SizedBox(width: 10),
        //                         Icon(Icons.edit, size: 15, color: Colors.grey),
        //                         SizedBox(width: 10),
        //                         Icon(Icons.highlight_off,
        //                             size: 15, color: Colors.grey),
        //                         SizedBox(width: 10),
        //                         Icon(Icons.favorite_border,
        //                             size: 15, color: Colors.pink),
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               isThreeLine: true,
        //               trailing: Material(
        //                 color: commentList[index].color,
        //                 borderRadius: BorderRadius.circular(4),
        //                 child: Container(
        //                   alignment: Alignment.center,
        //                   width: 60,
        //                   height: 20,
        //                   child: Text(
        //                     commentList[index].status.index == 0
        //                         ? 'Reject'
        //                         : commentList[index].status.index == 1
        //                             ? 'Accept'
        //                             : '',
        //                     style: TextStyle(
        //                       fontSize: 10,
        //                       color: Colors.white,
        //                       fontWeight: FontWeight.bold,
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           );
        //         },
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
