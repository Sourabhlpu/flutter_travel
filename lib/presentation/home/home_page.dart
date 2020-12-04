import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel/application/home/home_bloc.dart';
import 'package:flutter_travel/injection.dart';
import 'package:flutter_travel/presentation/widgets/bottom_appbar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(HomeEvent.watchAllStarted()),
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          print('$state');
          state.maybeMap(
              loadFailure: (state) {
                FlushbarHelper.createError(
                  message: state.homeFailure.maybeMap(
                      orElse: () => 'Or Else',
                      unexpected: (_) => 'Unexpected error occured while deleting, please contact support.',
                      insufficientPermission: (_) => 'Insufficient Permission'),
                ).show(context);
              },
              orElse: () {});
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: _buildAppBar(context),
          body: ListView(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            children: [
              buildHomeSearch(context),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Recent Searches',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        margin: const EdgeInsets.only(left: 16.0),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          width: 150,
                          color: Colors.grey,
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 50, bottom: 16),
                child: Text(
                  'Recommended From Trevatel',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 160,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        margin: const EdgeInsets.only(left: 16.0),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          width: 280,
                          color: Colors.grey,
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 50, bottom: 16),
                child: Text(
                  'Destination Popular',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        margin: const EdgeInsets.only(left: 16.0),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          width: 150,
                          color: Colors.grey,
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 50, bottom: 16),
                child: Text(
                  'Recommended Rooms',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.black),
                ),
              ),
              GridView.builder(
                  padding: const EdgeInsets.only(right: 16.0),
                  itemCount: 12,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 16.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      margin: const EdgeInsets.only(left: 16.0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        width: 150,
                        color: Colors.grey,
                      ),
                    );
                  })
            ],
          ),
          bottomNavigationBar: BottomAppBar(child: BottomAppBarWidget()),
        ),
      ),
    );
  }

  Padding buildHomeSearch(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildHomeSearchBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: _buildHomeSearchContent(context),
          )
        ],
      ),
    );
  }

  Row _buildHomeSearchContent(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.search,
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(width: 8.0),
        Text(
          'Find what you want',
          style: Theme.of(context)
              .textTheme
              .caption
              .copyWith(color: Colors.grey.shade400, fontSize: 14.0),
        ),
      ],
    );
  }

  Container _buildHomeSearchBackground() {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 4.0,
                offset: const Offset(0.0, 1.0))
          ]),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      elevation: 0,
      title: Text(
        'Home',
        style: Theme.of(context)
            .textTheme
            .headline4
            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
          child: _buildAppBarUserImage(),
        ),
      ],
    );
  }

  Widget _buildAppBarUserImage() {
    return AspectRatio(
      aspectRatio: 1,
      child: CircleAvatar(
        backgroundImage:
            NetworkImage('https://picsum.photos/seed/picsum/200/500'),
      ),
    );
  }
}
