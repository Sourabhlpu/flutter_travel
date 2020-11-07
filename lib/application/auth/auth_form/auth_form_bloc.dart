import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_travel/domain/auth/auth_failure.dart';
import 'package:flutter_travel/domain/auth/i_auth_facade.dart';
import 'package:flutter_travel/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_form_bloc.freezed.dart';
part 'auth_form_event.dart';
part 'auth_form_state.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  final IAuthFacade _authFacade;
  AuthFormBloc(this._authFacade) : super(AuthFormState.initial());
  bool hasUsernameField = false;


  @override
  Stream<AuthFormState> mapEventToState(
    AuthFormEvent event,
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
      hasUsernameField = true;
      Either<AuthFailure, Unit> failureOrSuccess;
      final userName = Username(e.usernameStr);
      if (userName.isValid()) {
        yield state.copyWith(
          username: userName,
          authFailureOrSuccessOption: none(),
          enableButton: _enableButton(),
          isVerifyingUsername: true,
        );
        failureOrSuccess =
            await _authFacade.validateUsername(username: userName);
        if (failureOrSuccess.isLeft()) {
          final userVerified = Username.isAvailable(false, e.usernameStr);
          yield state.copyWith(
            username: userVerified,
            authFailureOrSuccessOption: none(),
            enableButton: _enableButton(),
            showErrorMessages: true,
            isVerifyingUsername: false,
          );
        } else if (failureOrSuccess.isRight()) {
          yield state.copyWith(
            username: userName,
            authFailureOrSuccessOption: none(),
            enableButton: _enableButton(),
            isVerifyingUsername: false,
          );
        }

/*        yield* failureOrSuccess.fold((l) async* {

        }, (r) async* {

        });*/
      } else {
        yield state.copyWith(
          username: userName,
          authFailureOrSuccessOption: none(),
          enableButton: _enableButton(),
        );
      }
/*      userName.value.fold((_) async* {
        print('reached failure');

      }, (_) async* {
        print('reached success');

      });*/
    }, registerWithEmailAndPasswordPressed: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
          (_authFacade.registerWithEmailAndPassword));
    }, loginWithEmailAndPasswordPressed: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword);
    });
  }

  Stream<AuthFormState> _performActionOnAuthFacadeWithEmailAndPassword(
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
    if (!hasUsernameField)
      return true;
    else
      return state.username.isValid();
  }

  _enableButton() =>
      state.emailAddress.isValid() &&
      state.password.isValid() &&
      state.username.isValid();
}
