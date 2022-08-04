import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:login_registration/data/database.dart';
import 'package:login_registration/data/models/user.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterUser>(
      (event, emit) {
        emit(RegisterLoading());

        if (event.user.password == event.user.confirmpassword) {
          users.add(event.user);
          Navigator.pushReplacementNamed(
            event.context,
            '/',
          );
        }
      },
    );
  }
}
