import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/screens/profile/components/profile_list_view_item.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/Profile Image.jpg'),
                  maxRadius: 52,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                'John Doe',
                style: GoogleFonts.raleway(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscroll) {
              overscroll.disallowGlow();
              return true;
            },
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: 15),
              children: <Widget>[
                ProfileListViewItem(
                  icon: 'assets/icons/Account.png',
                  text: 'My Account',
                ),
                ProfileListViewItem(
                  icon: 'assets/icons/Orders.png',
                  text: 'My Orders',
                ),
                ProfileListViewItem(
                  icon: 'assets/icons/Location.png',
                  text: 'Shipping Address',
                ),
                ProfileListViewItem(
                  icon: 'assets/icons/Card.png',
                  text: 'My Cards',
                ),
                ProfileListViewItem(
                  icon: 'assets/icons/Settings.png',
                  text: 'Settings',
                ),
                ProfileListViewItem(
                  icon: 'assets/icons/Privacy Policy.png',
                  text: 'Privacy Policy',
                ),
                ProfileListViewItem(
                  icon: 'assets/icons/Faq.png',
                  text: 'FAQ',
                ),
                ProfileListViewItem(
                  icon: 'assets/icons/Contact Us.png',
                  text: 'Contact Us',
                ),
                ProfileListViewItem(
                  icon: 'assets/icons/Logout.png',
                  text: 'Logout',
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
