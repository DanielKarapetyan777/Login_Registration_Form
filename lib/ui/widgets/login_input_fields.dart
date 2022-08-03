import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_registration/data/bloc/login_bloc.dart';
import 'package:login_registration/ui/widgets/login_widgets.dart';

class LoginInputFields extends StatelessWidget {
  const LoginInputFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerUsername = TextEditingController();
    TextEditingController controllerPassword = TextEditingController();
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        if (state is LoginInitial) {
          return LoginWidgets(
            controllerUsername: controllerUsername,
            controllerPassword: controllerPassword,
            state: state,
          );
        }
        if (state is LoginLoading) {
          return const Align(
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
