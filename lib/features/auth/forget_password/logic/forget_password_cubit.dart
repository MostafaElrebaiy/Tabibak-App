import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/features/auth/forget_password/data/models/forget_request_body.dart';
import 'package:tabibk/features/auth/forget_password/data/repo/forget_password_repo.dart';
import 'forget_password_state.dart';

class ForgetCubit extends Cubit<ForgetState> {
  final ForgetRepo _forgetRepo;

  ForgetCubit(this._forgetRepo) : super(const ForgetState.initial());
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(const ForgetState.forgetLoading());
    final response = await _forgetRepo.forget(
      ForgetRequestBody(
        email: emailController.text,
      ),
    );
    response.when(
      success: (forgetResponse) {
        emit(ForgetState.forgetSuccess(forgetResponse));
      },
      failure: (error) {
        emit(ForgetState.forgetError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
