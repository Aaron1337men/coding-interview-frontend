import 'package:crypto_calculator/styles/app_border_radius.dart';
import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/themes/text_themes.dart';
import 'package:crypto_calculator/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({
    super.key,
    required this.logOut,
    required this.closeDrawer,
    /* required this.user */
  });

  final Function() closeDrawer;
  //final UserState user;
  final Function() logOut;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    print(user);
    /*  UserState? userState = locator<UserCubit>().state;
    print(userState); */
    return Drawer(
      backgroundColor: AppColors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpaces.m),
        child: Column(
          children: [
            const SizedBox(
              height: AppSpaces.xxl3v2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Icono Menu
                IconButton(
                    onPressed: closeDrawer,
                    icon: const Icon(
                      color: AppColors.accentPrimary,
                      Icons.menu,
                    ))
              ],
            ),
            const SizedBox(
              height: AppSpaces.xla,
            ),

            //Contenedor usuario
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.accentPrimary,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                          color: AppColors.accentPrimary,
                          size: 50,
                          Icons.account_circle)),
                  Flexible(
                    child: Text(
                      user?.email ?? 'Usuario',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .regularCaptionWhite
                          .copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColors.accentPrimary,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSpaces.s2,
            ),

            const Spacer(),
            const Divider(
              thickness: 1.25,
              height: 1,
            ),

            const SizedBox(
              height: AppSpaces.s2,
            ),
            CustomButton(
              onPressed: logOut,
              model: CustomButtonModel(
                customBackgroundColor: AppColors.secondaryBlue,
                text: 'Cerrar sesión',
                textStyle:
                    Theme.of(context).textTheme.regularCaptionWhite.copyWith(
                          fontSize: 16,
                          color: AppColors.brandPrimary,
                        ),
                leftIcon: Icons.logout,
                iconColor: AppColors.brandPrimary,
                size: CustomButtonSize.m,
                type: CustomButtonType.tertiary,
                borderRadius: AppBorderRadius.xs2,
              ),
            ),
            const SizedBox(
              height: AppSpaces.l,
            ),
          ],
        ),
      ),
    );
  }
}
