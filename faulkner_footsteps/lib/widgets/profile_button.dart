import 'package:faulkner_footsteps/app_state.dart';
import 'package:flutter/material.dart';
import 'package:faulkner_footsteps/app_router.dart';
import 'package:provider/provider.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<ApplicationState>(context, listen: false);
    return IconButton(
      icon: const Icon(
        Icons.person,
        color: Color.fromARGB(255, 255, 243, 228),
      ),
      onPressed: () {
        print("attempting to get user");
        if (!appState.loggedIn) {
          print("user is logged out");
          AppRouter.navigateTo(context, AppRouter.loginPage);
        } else {
          print("user is logged in");
          AppRouter.navigateTo(context, AppRouter.profilePage);
        }
      },
    );
  }
}
