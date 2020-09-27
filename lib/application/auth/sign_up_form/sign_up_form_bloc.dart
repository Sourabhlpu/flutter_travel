import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_travel/domain/auth/auth_failure.dart';
import 'package:flutter_travel/domain/auth/i_auth_facade.dart';
import 'package:flutter_travel/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_up_form_bloc.freezed.dart';
part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade _authFacade;

  SignUpFormBloc(this._authFacade);
  @override
  SignUpFormState get initialState => SignUpFormState.initial();

  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(emailChanged: (e) async* {
      yield state.copyWith(
        emailAddress: EmailAddress(e.emailStr),
        authFailureOrSuccessOption: none(),
        enableButton: _enableButton(),
      );
    }, passwordChanged: (e) async* {
      yield state.copyWith(
        password: Password(e.passwordStr),
        authFailureOrSuccessOption: none(),
        enableButton: _enableButton(),
      );
    }, usernameChanged: (e) async* {
      yield state.copyWith(
        username: Username(e.usernameStr),
        authFailureOrSuccessOption: none(),
        enableButton: _enableButton(),
      );
    }, registerWithEmailAndPasswordPressed: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
          (_authFacade.registerWithEmailAndPassword));
    }, loginWithEmailAndPasswordPressed: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword);
    });
  }

  Stream<SignUpFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function(
            {@required EmailAddress emailAddress, @required Password password})
        forwardedCall,
  ) async* {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    Either<AuthFailure, Unit> failureOrSuccess;
    if (isEmailValid && isPasswordValid && _isUserNameValid()) {
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());

      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }
    yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess));
  }

  _isUserNameValid() {
    if (state.username == null)
      return true;
    else
      return state.username.isValid();
  }

  _enableButton() =>
      state.emailAddress.isValid() &&
      state.password.isValid() &&
      state.username.isValid();
}
