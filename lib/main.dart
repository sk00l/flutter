import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_app/modules/auth/SignIn/bloc/login_bloc.dart';
import 'package:instagram_app/modules/auth/SignIn/repository/login_auth_repo.dart';
import 'package:instagram_app/modules/ui/screens/instagram_welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => LoginAuthenticationRepository(),
      child: BlocProvider(
        create: (context) => LoginBloc(
            loginAuthenticationRepository:
                context.read<LoginAuthenticationRepository>()),
        child: const MaterialApp(
          home: InstagramWelcomePage(),
        ),
      ),
    );
  }
}
