import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:login_registration/data/bloc/register_bloc.dart';
import 'package:login_registration/data/models/user.dart';

class RegistInputFields extends StatelessWidget {
  const RegistInputFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerFirstName = TextEditingController();
    TextEditingController controllerLastName = TextEditingController();
    TextEditingController controllerEmail = TextEditingController();
    TextEditingController controllerPassword = TextEditingController();
    TextEditingController controllerConfirmPassword = TextEditingController();
    TextEditingController controllerPhonenumber = TextEditingController();

    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        String text;
        if (state is RegisterInitial) {
          return Stack(
            children: [
              ListView(children: [
                Column(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(left: 32, right: 30, top: 16),
                      height: 48,
                      child: Row(
                        children: [
                          const Text('Don’t have an HyeID account?'),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                '/',
                              );
                            },
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(59, 158, 146, 1),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 54,
                    ),
                    const Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32),
                      width: 311,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 0.2,
                            blurRadius: 0.5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: controllerFirstName,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        onChanged: (String value) {},
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32),
                      width: 311,
                      //height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 0.2,
                            blurRadius: 0.5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: controllerLastName,
                        textCapitalization: TextCapitalization.sentences,
                        onChanged: (String value) {},
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32),
                      width: 311,
                      //height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 0.2,
                            blurRadius: 0.5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: controllerEmail,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (String value) {},
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32),
                      width: 311,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 0.2,
                            blurRadius: 0.5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: IntlPhoneField(
                        keyboardType: TextInputType.number,
                        controller: controllerPhonenumber,
                        decoration: const InputDecoration(
                          hintText: 'Phone number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                        // onChanged: (phone) {
                        //   print(phone.completeNumber);
                        // },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32),
                      width: 311,
                      //height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 0.2,
                            blurRadius: 0.5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: controllerPassword,
                        obscureText: true,
                        obscuringCharacter: "*",
                        autocorrect: false,
                        enableSuggestions: false,
                        onChanged: (String value) {},
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32),
                      width: 311,
                      //height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 0.2,
                            blurRadius: 0.5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: controllerConfirmPassword,
                        obscureText: true,
                        obscuringCharacter: "*",
                        autocorrect: false,
                        enableSuggestions: false,
                        onChanged: (String value) {},
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          //hintStyle: TextStyle(color: Colors.red),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ]),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 34),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(311, 48),
                      primary: const Color.fromRGBO(59, 158, 146, 1),
                    ),
                    child: const Text('CREATE'),
                    onPressed: () {
                      var user = User(
                        firstname: controllerFirstName.value.text,
                        lastname: controllerLastName.value.text,
                        email: controllerEmail.value.text,
                        password: controllerPassword.value.text,
                        confirmpassword: controllerConfirmPassword.value.text,
                        phonenumber: controllerPhonenumber.value.text,
                      );
                      context.read<RegisterBloc>().add(
                            RegisterUser(user: user),
                          );
                    },
                  ),
                ),
              )
            ],
          );
        }

        if (state is RegisterLoading) {
          return const Align(
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
