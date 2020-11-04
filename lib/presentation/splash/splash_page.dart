import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel/application/auth/auth_bloc.dart';
import 'package:flutter_travel/presentation/routes/route.gr.dart';


class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state){
        state.map(initial: (_){
          print('initial state');
        }, authenticated: (_){
          ExtendedNavigator.of(context).replace(Routes.homePage);
        }, unauthenticated: (_){
          print('unauthenticated');
          ExtendedNavigator.of(context).replace(Routes.onboardingHome);
        });
      },
      child: Scaffold(
        body: 
        Container(
          height: double.infinity,
          child: Image.asset('assets/images/splash.png', fit: BoxFit.fitHeight,),
        ),
      )
    );
  }
}
