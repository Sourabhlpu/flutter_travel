part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState{
  const factory SignUpFormState({
    @required Username username,
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool enableButton,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignUpFormState.initial() => SignUpFormState(
    username: Username(''),
    emailAddress: EmailAddress(''),
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    enableButton: false,
    authFailureOrSuccessOption: none(),
  );
}
