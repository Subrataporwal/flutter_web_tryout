// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_web_course/helpers/responsiveness.dart';
import 'package:flutter_web_course/routing/routes.dart';
import 'package:flutter_web_course/widgets/sideMenu/side_menu_items.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/controllers.dart';
import '../../constants/styles.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  var isHover = false;
  @override
  Widget build(BuildContext context) {
    return kRoundedContainer(
      margin: const EdgeInsets.all(20),
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? Greyscale.k50
          : Greyscale.k800,
      width: 600,
      padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // kSizedbox.h32px,
          // SvgPicture.asset(
          //   Theme.of(context).brightness == Brightness.light
          //       ? fluxflowLogo
          //       : fluxflowLogoLight,
          //   width: 200,
          // ),

          Divider(
            thickness: 1,
            height: 52,
            indent: 20,
            endIndent: 20,
            color: Greyscale.k400,
          ),
          // Container(
          //   margin: const EdgeInsets.symmetric(horizontal: 20),
          //   child: PrimaryButtom(
          //     text: 'Create New App',
          //     function: () async {
          //       showDialog(
          //           context: context,
          //           builder: (context) => const CreateNewApp());
          //     },
          //     width: 300,
          //     icon: true,
          //     iconData: Iconsax.add,
          //   ),
          // ),
          // kSizedbox.h24px,
          Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItems
                  .map(
                    (item) => SideMenuItem(
                        itemName: item.name,
                        onTap: () {
                          if (!menuController.isActive(item.name)) {
                            menuController.chnageActiveItemTo(item.name);
                            if (ResponsiveWidget.isSmallScreen(context))
                              Get.back();
                          }
                          navigationController.navigateTo(item.route);
                        }),
                  )
                  .toList()),

          // Expanded(child: Container()),
          // const MyAccountButton(),

          //  Logout Button
          // Row(
          //   children: [
          //     Container(
          //         padding: const EdgeInsets.only(left: 20),
          //         child: const DarkModeButton()),

          //     // Logout Button
          //     MouseRegion(
          //       onHover: (event) {
          //         isHover = true;
          //       },
          //       onExit: (event) {
          //         isHover = false;
          //       },
          //       child: Container(
          //         margin: const EdgeInsets.symmetric(horizontal: 20),
          //         height: 50,
          //         width: ResponsiveWidget.isLargeScreen(context) ? 172 : 42,
          //         child: ElevatedButton.icon(
          //           onPressed: () async {
          //             // ignore: todo
          //             await FirebaseAuth.instance
          //                 .signOut()
          //                 .whenComplete(() => Get.toNamed('/sign-in'));
          //           },
          //           icon: Icon(
          //             Iconsax.logout,
          //             color: Greyscale.k500,
          //             size: ResponsiveWidget.isLargeScreen(context) ? 18 : 16,
          //           ),
          //           label: ResponsiveWidget.isLargeScreen(context)
          //               ? Text(
          //                   'Log Out',
          //                   style: GoogleFonts.manrope(
          //                     fontSize: 14,
          //                     letterSpacing: 1,
          //                     color: Greyscale.k500,
          //                   ),
          //                 )
          //               : const SizedBox(),
          //           style: ElevatedButton.styleFrom(
          //             side: BorderSide(
          //                 width: 2,
          //                 style: BorderStyle.solid,
          //                 color:
          //                     Theme.of(context).brightness == Brightness.light
          //                         ? Greyscale.k900
          //                         : Greyscale.k700),
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(12)),
          //             elevation: 0,
          //             backgroundColor:
          //                 isHover == true ? Primary.base : Greyscale.k800,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),

          // kSizedbox.h56px
        ],
      ),
    );
  }
}

Widget kRoundedContainer(
    {Color? backgroundColor,
    Alignment? alignment,
    Widget? child,
    double? width,
    double? height,
    EdgeInsets? margin,
    EdgeInsets? padding}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    margin: margin ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Container(
      alignment: alignment,
      padding: padding ?? const EdgeInsets.all(20),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        // border: Border.all(width: .1, color: Primary.b10),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    ),
  );
}
