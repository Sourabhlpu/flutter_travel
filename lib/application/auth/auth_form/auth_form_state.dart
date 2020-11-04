part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormState with _$AuthFormState{
  const factory AuthFormState({
    @required Username username,
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool isVerifyingUsername,
    @required bool enableButton,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
    username: Username(''),
    emailAddress: EmailAddress(''),
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    isVerifyingUsername: false,
    enableButton: false,
    authFailureOrSuccessOption: none(),
  );
}
