import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_registration/data/database.dart';
import 'package:login_registration/data/models/user.dart';
import 'package:login_registration/ui/pages/user_page.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginUser>((event, emit) {
      emit(
        LoginLoading(),
      );
      for (User user in users) {
        if (user.email == event.username) {
          if (user.password == event.password) {
            Navigator.push(
                event.context,
                MaterialPageRoute(
                    builder: ((context) => UserPage(
                        ferstname: user.firstname.toString(),
                        lastname: user.lastname.toString()))));
          } else {
            print("password is incorrect");
          }
        } else {
          print("username is incorrect");
        }
      }

      //log(event.username);
    });
  }
}
