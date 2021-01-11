import 'package:flutter/material.dart';
import 'package:flutter_travel/domain/home/popular_destination.dart';

class PopularDestinationWidget extends StatelessWidget {
  const PopularDestinationWidget({
    Key key,
    @required this.destination,
  }) : super(key: key);

  final PopularDestination destination;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)),
      margin: const EdgeInsets.only(left: 16.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 130,
            color: Colors.white,
            child: Image.network(destination.imageUrl.getOrCrash(), fit: BoxFit.fill,),
          ),
          Text(
            '${destination.title.getOrCrash()}',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.white),
          )
        ],
      ),
    );
  }
}