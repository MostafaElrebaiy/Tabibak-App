import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/features/auth/signup/data/models/sign_up_request_body.dart';
import 'package:tabibk/features/auth/signup/data/repo/sign_up_repo.dart';
import 'sign_up_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;

  SignupCubit(this._signupRepo) : super(const SignupState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  FocusNode name = FocusNode();
  FocusNode phone = FocusNode();
  FocusNode email = FocusNode();
  FocusNode password = FocusNode();
  FocusNode confirmPassword = FocusNode();

  void emitSignupStates() async {
    emit(const SignupState.signupLoading());
    final response = await _signupRepo.signup(SignUpRequestBody(
      email: emailController.text,
      password: passwordController.text,
      passwordConfirmation: passwordConfirmController.text,
      name: nameController.text,
    ));
    response.when(
      success: (signUpResponse) {
        emit(SignupState.signupSuccess(signUpResponse));
      },
      failure: (error) {
        emit(
            SignupState.signupError(error: error.apiErrorModel.data?[0] ?? ''));
      },
    );
  }
}
