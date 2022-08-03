import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_registration/data/bloc/login_bloc.dart';
import 'package:login_registration/data/bloc/register_bloc.dart';
import 'package:login_registration/ui/pages/login_page.dart';
import 'package:login_registration/ui/pages/regist_page.dart';
import 'package:login_registration/ui/pages/user_page.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task',
        theme: ThemeData(
          backgroundColor: Colors.white,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
          '/details': (context) => const RegistPage(),
          '/details1': (context) => UserPage(
                ferstname: '',
                lastname: '',
              )
        },
      ),
    );
  }
}
