import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_travel/domain/home/room.dart';

class RecommendedRoom extends StatelessWidget {
  const RecommendedRoom({
    this.room,
    Key key,
  }) : super(key: key);

  final Room room;
  @override
  Widget build(BuildContext context) {
    final price = room.price.getOrCrash();
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      margin: const EdgeInsets.only(left: 16.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        width: 150,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              room.imageUrl.getOrCrash(),
              fit: BoxFit.fill,
              height: 120,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                '${room.title.getOrCrash()}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '${price.currency} ${price.amount}/${price.unit}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 4.0),
              child: Row(
                children: [
                  RatingBar.builder(
                    initialRating: room.rating.getOrCrash().toDouble(),
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 12.0,
                    ignoreGestures: true,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    '${room.rating.getOrCrash().toDouble()}',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
