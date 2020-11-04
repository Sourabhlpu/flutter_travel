import 'package:flutter/material.dart';

class ChooseDestinationPage extends StatefulWidget {
  @override
  _ChooseDestinationPageState createState() => _ChooseDestinationPageState();
}

class _ChooseDestinationPageState extends State<ChooseDestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Choose your Favorite Destination',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GridView.builder(
            padding: const EdgeInsets.all(12.0),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.8,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12),
            itemBuilder: (context, index) => _buildCardItems(),
            itemCount: 4,
          )
        ],
      ),
    );
  }

  Widget _buildCardItems() {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: ColorFiltered(
              colorFilter:
                  ColorFilter.mode(Colors.grey[700], BlendMode.lighten),
              child: Image.asset(
                'assets/images/splash.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text('Mountains', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 8.0,
    );
  }
}
