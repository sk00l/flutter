import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_app/models/user_model.dart';
import 'package:instagram_app/modules/auth/SignIn/bloc/login_bloc.dart';
import 'package:instagram_app/modules/auth/SignIn/repository/login_auth_repo.dart';
import 'package:instagram_app/modules/ui/screens/edit_ptofile_screen.dart';
import 'package:instagram_app/modules/ui/screens/home_page.dart';
import 'package:instagram_app/modules/ui/screens/instagram_welcome_page.dart';
import 'package:instagram_app/modules/ui/screens/login_screen.dart';

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
                context.read<LoginAuthenticationRepository>())
          ..add(LoginCheckRequested()),
        child: const MaterialApp(
          home: EditProfileScreen(),
          // home: BlocListener<LoginBloc, LoginState>(
          //   listenWhen: (previous, current) => current is LoginUnAuthenticated,
          //   listener: (context, state) {
          //     if (state is LoginUnAuthenticated) {
          //       // Navigator.pushAndRemoveUntil(context,
          //       //     MaterialPageRoute(builder: (context) => const LoginPage(),));

          //       Navigator.pushAndRemoveUntil(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => const LoginPage(),
          //           ),
          //           (route) => true);
          //     }
          //   },
          //   child: BlocBuilder<LoginBloc, LoginState>(
          //     buildWhen: (previous, current) =>
          //         current is LoginAuthenticated ||
          //         current is LoginUnAuthenticated ||
          //         current is LoginInitial,
          //     builder: (context, state) {
          //       if (state is LoginAuthenticated) {
          //         return const HomePage();
          //       } else if (state is LoginUnAuthenticated) {
          //         return const LoginPage();
          //       } else {
          //         return const InstagramWelcomePage();
          //       }
          //     },
          //   ),
          // ),
        ),
      ),
    );
  }
}
