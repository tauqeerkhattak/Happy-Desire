import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/category_list/category_list_screen.dart';
import 'package:shop_app/screens/checkout/checkout_screen.dart';
import 'package:shop_app/screens/contact_us/contact_us.dart';
import 'package:shop_app/screens/edit_profile/edit_profile_screen.dart';
import 'package:shop_app/screens/faq/faq_screen.dart';
import 'package:shop_app/screens/filter/filter_screen.dart';
import 'package:shop_app/screens/language/language_screen.dart';
import 'package:shop_app/screens/orders/orders_screen.dart';
import 'package:shop_app/screens/add_address/add_address_screen.dart';
import 'package:shop_app/screens/add_card/add_card_screen.dart';
import 'package:shop_app/screens/add_review/add_review_screen.dart';
import 'package:shop_app/screens/address/address_screen.dart';
import 'package:shop_app/screens/cards/cards_screen.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/categories/categories_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/notification/notification_screen.dart';
import 'package:shop_app/screens/privacy_policy/privacy_policy_screen.dart';
import 'package:shop_app/screens/product_details/product_details_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/purchased/purchased_screen.dart';
import 'package:shop_app/screens/search/search_screen.dart';
import 'package:shop_app/screens/settings/settings_screen.dart';
import 'package:shop_app/screens/shipping/shipping_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/tabs/tabs_screen.dart';
import 'package:shop_app/screens/verification/verification_screen.dart';
import 'package:shop_app/screens/wish_list/wishlist_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  TabsScreen.routeName: (context) => TabsScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  VerificationScreen.routeName: (context) => VerificationScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CategoriesScreen.routeName: (context) => CategoriesScreen(),
  WishListScreen.routeName: (context) => WishListScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  AddressScreen.routeName: (context) => AddressScreen(),
  ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
  AddAddressScreen.routeName: (context) => AddAddressScreen(),
  EditProfileScreen.routeName: (context) => EditProfileScreen(),
  OrdersScreen.routeName: (context) => OrdersScreen(),
  SettingsScreen.routeName: (context) => SettingsScreen(),
  AddReviewScreen.routeName: (context) => AddReviewScreen(),
  CardsScreen.routeName: (context) => CardsScreen(),
  AddCardScreen.routeName: (context) => AddCardScreen(),
  CheckoutScreen.routeName: (context) => CheckoutScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
  PurchasedScreen.routeName: (context) => PurchasedScreen(),
  FilterScreen.routeName: (context) => FilterScreen(),
  PrivacyPolicyScreen.routeName: (context) => PrivacyPolicyScreen(),
  FaqScreen.routeName: (context) => FaqScreen(),
  ContactUsScreen.routeName: (context) => ContactUsScreen(),
  LanguageScreen.routeName: (context) => LanguageScreen(),
  ShippingScreen.routeName: (context) => ShippingScreen(),
  CategoryListScreen.routeName: (context) => CategoryListScreen(),
};
