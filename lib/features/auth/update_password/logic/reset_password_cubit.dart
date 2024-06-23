import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/features/auth/update_password/data/models/reset_password_request_body.dart';
import 'package:tabibk/features/auth/update_password/data/repo/reset_password_repo.dart';
import 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ResetPasswordRepo _resetPasswordRepo;
  FocusNode updatePassword = FocusNode();
  FocusNode reenterNewPassword = FocusNode();

  ResetPasswordCubit(this._resetPasswordRepo)
      : super(const ResetPasswordState.initial());
  TextEditingController codeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitResetPasswordStates() async {
    emit(const ResetPasswordState.resetPasswordLoading());
    final response =
        await _resetPasswordRepo.resetPassword(ResetPasswordRequestBody(
      code: codeController.text,
      password: passwordController.text,
      passwordConfirmation: passwordConfirmController.text,
    ));
    response.when(
      success: (resetPasswordResponse) {
        emit(ResetPasswordState.resetPasswordSuccess(resetPasswordResponse));
      },
      failure: (error) {
        emit(ResetPasswordState.resetPasswordError(
            error: error.apiErrorModel.message ??''));
      },
    );
  }
}
