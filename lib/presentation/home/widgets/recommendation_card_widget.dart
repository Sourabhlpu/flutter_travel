import 'package:flutter/material.dart';
import 'package:flutter_travel/domain/home/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key key,
    @required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      margin: const EdgeInsets.only(left: 16.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        width: 280,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              fit: StackFit.passthrough,
              children: [
                Image.network(
                  recommendation.imageUrl.getOrCrash(),
                  fit: BoxFit.fill,
                  height: 140,
                ),
                Text(
                  '${recommendation.type.getOrCrash()}',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${recommendation.title.getOrCrash()}',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[600],
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${recommendation.description.getOrCrash()}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.grey[400], fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
