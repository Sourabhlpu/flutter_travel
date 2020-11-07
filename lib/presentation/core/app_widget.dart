import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel/application/auth/auth_bloc.dart';
import 'package:flutter_travel/injection.dart';
import 'package:flutter_travel/presentation/routes/route.gr.dart' as app_router;


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(AuthEvent.authCheckRequested()),
        )
      ],
      child:
      GestureDetector(
        onTap: (){
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
            currentFocus.focusedChild.unfocus();
          }
        },
        child: MaterialApp(
          title: 'Travel',
          debugShowCheckedModeBanner: false,
          builder: ExtendedNavigator.builder(router: app_router.Router()),
          theme: ThemeData.light().copyWith(
            primaryColor: Colors.deepPurple,
            accentColor: Colors.deepPurpleAccent
          ),
        ),
      ),
    );
  }
}
