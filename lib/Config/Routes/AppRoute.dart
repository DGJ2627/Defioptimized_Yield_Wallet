import 'package:defioptimized_yield/presentation/Pages/HomeScreen/AllTransactionTabBarScreen_View/TransactionDetailsScreen_View/TransactionDetailsScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/HomeScreen/HomeScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/ForgotPassword_View/ForgotPasswordScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/LoginScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/LoginSystem/Widgets/NumericKeypad%20_Widget.dart';
import 'package:defioptimized_yield/presentation/Pages/NotificationScreen_View/NotificationScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/OnBoarding_View/OnBoardingScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/ROIScreen/BuyPackageScreen/BuyPackageScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/ROIScreen/ROIAddPasswordScreen_View/ROIAddPasswordScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/ROIScreen/ROIScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/ChangePassword_View/ChangePassword_View.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/EditProfileScreen_View/EditProfileScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/KYCVerification_View/KYCVerification_View.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/Security_View/Chnage_Password_View/confirm_new_password_screen_view.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/Security_View/Security_View.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/SettingScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/getsupport_View/create_ticket_view/create_ticket_view.dart';
import 'package:defioptimized_yield/presentation/Pages/SettingScreen/getsupport_View/my_ticket_details_screen_view/my_ticket_details_screen_view.dart';
import 'package:defioptimized_yield/presentation/Pages/SplashScreen_View/SplashScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/WithdrawScreen/WithdrawAmount_View/WithdrawAmount_View.dart';
import 'package:defioptimized_yield/presentation/Pages/WithdrawScreen/WithdrawPasswordScreen_View/WithdrawPasswordScreen_View.dart';
import 'package:defioptimized_yield/presentation/Pages/WithdrawScreen/WithdrawScreen_View.dart';
import 'package:get/get.dart';
import '../../presentation/Pages/BottomNavigationScreen/BottomNavigationScreen_VIew.dart';
import '../../presentation/Pages/HomeScreen/AllTransactionTabBarScreen_View/AllTransactionScreens/AllTransactionScreens.dart';
import '../../presentation/Pages/ROIScreen/AddInvestmentScreen_View/AddInvestmentScreen_View.dart';
import '../../presentation/Pages/SettingScreen/Security_View/Chnage_Password_View/old_password_screen_view.dart';
import '../../presentation/Pages/SettingScreen/Security_View/Chnage_Password_View/set_new_password_screen_view.dart';
import '../../presentation/Pages/SettingScreen/Security_View/EmailAuthenticator_View/EmailAuthenticator_View.dart';
import '../../presentation/Pages/SettingScreen/Security_View/GoogleEmailAuthenticator/GoogleEmailAuthenticator.dart';
import '../../presentation/Pages/SettingScreen/getsupport_View/get_support_View.dart';

class AppRoute {
  static final List<GetPage<dynamic>> pages = [
    //splash screen
    GetPage(name: '/', page: () => const SplashScreenView()),

    //onboarding screen
    GetPage(name: '/OnBoardingScreen', page: () => const OnBoardingScreen()),

    //login and sign up screens
    GetPage(name: '/LoginScreenView', page: () => const LoginScreenView()),
    GetPage(
        name: '/ForgotPasswordScreen',
        page: () => const ForgotPasswordScreen()),
    GetPage(
        name: '/NumericKeypadWidget', page: () => const NumericKeypadWidget()),

    //bottom navigation screen
    GetPage(
        name: '/BottomNavigationScreen',
        page: () => const BottomNavigationScreen()),
    GetPage(name: '/HomeScreen', page: () => const HomeScreen()),
    GetPage(name: '/ROIScreen', page: () => const ROIScreen()),
    GetPage(name: '/WithdrawScreen', page: () => const WithdrawScreen()),
    GetPage(name: '/SettingScreen', page: () => const SettingScreen()),

    GetPage(
        name: '/AllTransactionScreens',
        page: () => const AllTransactionScreens()),
    GetPage(
        name: '/TransactionDetailsScreenView',
        page: () => const TransactionDetailsScreenView()),
    GetPage(
        name: '/AddInvestmentScreenView',
        page: () => const AddInvestmentScreenView()),
    GetPage(
        name: '/BuyPackageScreenView',
        page: () => const BuyPackageScreenView()),
    GetPage(
        name: '/ROIAddPasswordScreenView',
        page: () => const ROIAddPasswordScreenView()),
    GetPage(
        name: '/WithdrawAmountView', page: () => const WithdrawAmountView()),
    GetPage(
        name: '/WithdrawPasswordScreenView',
        page: () => const WithdrawPasswordScreenView()),
    GetPage(
        name: '/NotificationScreenView',
        page: () => const NotificationScreenView()),
    GetPage(name: '/SettingScreen', page: () => const SettingScreen()),
    GetPage(
        name: '/EditProfileScreenView',
        page: () => const EditProfileScreenView()),
    GetPage(
        name: '/ChangePasswordView', page: () => const ChangePasswordView()),
    GetPage(
        name: '/KYCVerificationView', page: () => const KYCVerificationView()),

    GetPage(name: '/SecurityView', page: () => const SecurityView()),
    GetPage(
        name: '/GoogleEmailAuthenticator',
        page: () => const GoogleEmailAuthenticator()),
    GetPage(
        name: '/EmailAuthenticatorView',
        page: () => const EmailAuthenticatorView()),
    GetPage(
        name: '/OldPasswordScreenView',
        page: () => const OldPasswordScreenView()),
    GetPage(
        name: '/SetNewPasswordScreenView',
        page: () => const SetNewPasswordScreenView()),
    GetPage(
        name: '/ConfirmNewPasswordScreenView',
        page: () => const ConfirmNewPasswordScreenView()),
    GetPage(name: '/GetSupportView', page: () => const GetSupportView()),
    GetPage(name: '/CreateTicketView', page: () => const CreateTicketView()),

    GetPage(
        name: '/MyTicketDetailsScreenView',
        page: () => const MyTicketDetailsScreenView()),
  ];
}
