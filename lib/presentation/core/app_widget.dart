import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel/presentation/routes/route.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(

        )
      ],
      child: MaterialApp(
        title: 'Travel',
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator(
          router: Router(),
        ),
      ),
    );
  }
}
