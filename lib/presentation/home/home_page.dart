import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel/application/home/home_bloc.dart';
import 'package:flutter_travel/injection.dart';
import 'package:flutter_travel/presentation/widgets/bottom_appbar_widget.dart';
import 'package:flutter_travel/presentation/home/widgets/popular_destination_widget.dart';
import 'package:flutter_travel/presentation/home/widgets/recommendation_card_widget.dart';
import 'package:flutter_travel/presentation/home/widgets/recommended_rooms_card_widget.dart';
import 'package:flutter_travel/presentation/home/widgets/search_card_widget.dart';

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
                      unexpected: (_) =>
                          'Unexpected error occured while deleting, please contact support.',
                      insufficientPermission: (_) => 'Insufficient Permission'),
                ).show(context);
              },
              orElse: () {});
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: _buildAppBar(context),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                BlocBuilder<HomeBloc, HomeState>(
                    buildWhen: (previous, state) => state.maybeMap(
                        orElse: () => false, loadSuccessSearch: (_) => true),
                    builder: (context, state) => buildSearchList(state)),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 30, bottom: 16),
                  child: Text(
                    'Recommended From Trevatel',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.black),
                  ),
                ),
                BlocBuilder<HomeBloc, HomeState>(
                    buildWhen: (previous, state) => state.maybeMap(
                          orElse: () => false,
                          loadSuccessRecommendation: (_) => true,
                        ),
                    builder: (context, state) =>
                        buildRecommendationsList(state)),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 30, bottom: 16),
                  child: Text(
                    'Destination Popular',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.black),
                  ),
                ),
                BlocBuilder<HomeBloc, HomeState>(
                    buildWhen: (previous, state) => state.maybeMap(
                          orElse: () => false,
                          loadSuccessPopularDestination: (_) => true,
                        ),
                    builder: (context, state) => buildDestinationsList(state)),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 50, bottom: 16),
                  child: Text(
                    'Recommended Rooms',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.black),
                  ),
                ),
                BlocBuilder<HomeBloc, HomeState>(
                    buildWhen: (previous, state) => state.maybeMap(
                          orElse: () => false,
                          loadSuccessRooms: (_) => true,
                        ),
                    builder: (context, state) =>
                        buildRecommendedRoomsList(state)),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(child: BottomAppBarWidget()),
        ),
      ),
    );
  }

  Widget buildRecommendedRoomsList(HomeState state) {
    return state.maybeMap(
      loadSuccessRooms: (roomsSuccess) => GridView.builder(
          padding: const EdgeInsets.only(right: 16.0),
          itemCount: 10,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 16.0),
          itemBuilder: (BuildContext context, int index) {
            final room = roomsSuccess.rooms[index];
            return RecommendedRoom(room: room);
          }),
      orElse: () => Container(),
    );
  }

  Widget buildDestinationsList(HomeState state) {
    print('build popular destination list');
    return state.maybeMap(
      loadSuccessPopularDestination: (destinationSuccess) => SizedBox(
        height: 190,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: destinationSuccess.popularDestinations.size,
            itemBuilder: (BuildContext context, int index) {
              final destination = destinationSuccess.popularDestinations[index];
              return PopularDestinationWidget(destination: destination);
            }),
      ),
      orElse: () => Container(),
    );
  }

  Widget buildRecommendationsList(HomeState state) {
    return state.maybeMap(
      loadSuccessRecommendation: (recommendationsSuccess) => SizedBox(
        height: 244,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: recommendationsSuccess.recommendations.size,
            itemBuilder: (BuildContext context, int index) {
              final recommendation =
                  recommendationsSuccess.recommendations.get(index);
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: RecommendationCard(recommendation: recommendation),
              );
            }),
      ),
      orElse: () => Container(),
    );
  }

  Widget buildSearchList(HomeState state) {
    return state.maybeMap(
      loadSuccessSearch: (searchSuccess) => SizedBox(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: searchSuccess.searches.size,
            itemBuilder: (BuildContext context, int index) {
              final search = searchSuccess.searches[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SearchCard(search: search),
              );
            }),
      ),
      orElse: () => Container(),
    );
  }

  Padding buildHomeSearch(BuildContext context) {
    print('build home search');
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
