import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:flutter_travel/injection.dart';
import 'package:flutter_travel/presentation/widgets/login_form_one.dart';
import 'package:flutter_travel/presentation/widgets/signup_form.dart';
import 'package:flutter_travel/presentation/widgets/signup_form_one.dart';

class SignUpPage extends StatelessWidget {
  final bool openLogin;
  const SignUpPage({Key key, this.openLogin = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocProvider(
        create: (context) => getIt<SignUpFormBloc>(),
        child: openLogin ? LoginFormOne() : SignupFormOne(),
      ),
    );
  }
}
