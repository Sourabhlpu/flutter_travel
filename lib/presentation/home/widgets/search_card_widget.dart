import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_travel/domain/home/search.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key key,
    @required this.search,
  }) : super(key: key);

  final Search search;

  @override
  Widget build(BuildContext context) {
    final price = search.price.getOrCrash();
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      margin: const EdgeInsets.only(left: 16.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        width: 140,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              search.imageUrl.getOrCrash(),
              fit: BoxFit.fill,
              height: 120,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                '${search.title.getOrCrash()}',
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
                    initialRating: search.rating.getOrCrash().toDouble(),
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
                    '${search.rating.getOrCrash().toDouble()}',
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
