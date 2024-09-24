import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:defioptimized_yield/presentation/Pages/BottomNavigationScreen/BottomNavigationScreen_VIew.dart';
import 'package:defioptimized_yield/presentation/Widgets/CustomButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../Utils/Helper/Helper.dart';
import 'AllTransactionScreens/AllTransactionScreens.dart';
import 'DepositScreen/DepositScreen_View.dart';
import 'ReturnOnInvestmentScreen/ReturnOnInvestmentScreen_View.dart';
import 'WithdrawTransactionScreen/WithdrawTransactionScreen_View.dart';
import 'controller/AllTransactionTabBarScreen_Controller.dart';

class AllTransactionTabBarScreenView extends StatefulWidget {
  const AllTransactionTabBarScreenView({super.key});

  @override
  State<AllTransactionTabBarScreenView> createState() =>
      _AllTransactionTabBarScreenViewState();
}

class _AllTransactionTabBarScreenViewState
    extends State<AllTransactionTabBarScreenView>
    with SingleTickerProviderStateMixin {
  final tabController = Get.put(AllTransactionTabBarScreenController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    tabController.tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);

    showDatePicker() {
      Get.defaultDialog(
        backgroundColor: dark ? Colors.white : const Color(0xff1E1F23),
        titlePadding: const EdgeInsetsDirectional.symmetric(vertical: 20),
        title: "Select Data",
        titleStyle: GoogleFonts.plusJakartaSans(
            color: dark ? Colors.black : Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700),
        radius: 10,
        content: Container(
          height: 180,
          width: 335,
          decoration: BoxDecoration(
            color: dark ? Colors.white : const Color(0xff1E1F23),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 48,
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Iconsax.calendar_1,
                        color: dark ? Colors.black : Colors.white,
                      ),
                    ),
                    filled: true,
                    fillColor: dark
                        ? const Color(0xffF8F8F8)
                        : const Color(0xff131212),
                    labelText: "StartDate",
                    labelStyle: GoogleFonts.plusJakartaSans(
                        color: dark
                            ? const Color(0xff737175)
                            : const Color(0xff777B95),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              const Gap(10),
              SizedBox(
                height: 48,
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Iconsax.calendar_1,
                        color: dark ? Colors.black : Colors.white,
                      ),
                    ),
                    filled: true,
                    fillColor: dark
                        ? const Color(0xffF8F8F8)
                        : const Color(0xff131212),
                    labelText: "EndDate",
                    labelStyle: GoogleFonts.plusJakartaSans(
                        color: dark
                            ? const Color(0xff737175)
                            : const Color(0xff777B95),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              const Gap(20),
              const CustomButtonWidget(height: 48, width: 295, text: "Done"),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: dark ? Colors.white : const Color(0xff020817),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: IconButton(
            onPressed: () => Get.offAll(const BottomNavigationScreen()),
            icon: Icon(
              Icons.keyboard_backspace_rounded,
              color: dark ? Colors.black : Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "AllTransaction",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: IconButton(
                onPressed: showDatePicker,
                icon: Icon(
                  Iconsax.calendar_1,
                  color: dark ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Obx(
              () => DefaultTabController(
                initialIndex: tabController.selectedIndex.value,
                length: 4,
                child: ButtonsTabBar(
                  controller: tabController.tabController,
                  contentCenter: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 36,
                  labelStyle:
                      const TextStyle(fontSize: 15, color: Colors.white),
                  unselectedLabelStyle: TextStyle(
                      fontSize: 15,
                      color: dark
                          ? const Color(0xff000000)
                          : const Color(0xff777B95)),
                  unselectedBorderColor: dark
                      ? const Color(0xffE9F0FC)
                      : Colors.white.withOpacity(0.1),
                  unselectedBackgroundColor: dark
                      ? const Color(0xffE9F0FC)
                      : Colors.white.withOpacity(0.1),
                  borderColor: Colors.transparent,
                  borderWidth: 1,
                  // backgroundColor: const Color(0xff555DFD),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff379FFE),
                        Color(0xff555DFD),
                      ],
                    ),
                  ),
                  buttonMargin: const EdgeInsets.symmetric(horizontal: 8),
                  tabs: tabController.tabNames
                      .map(
                        (e) => Tab(
                          text: e,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController.tabController,
        children: const [
          DepositScreenView(),
          WithdrawTransactionScreenView(),
          ReturnOnInvestmentScreen(),
          AllTransactionScreens(),
        ],
      ),
    );
  }
}

/*
TabBarView(
          controller: tabController.tabController,
          children: const [
            DepositScreenView(),
            WithdrawTransactionScreenView(),
            ReturnOnInvestmentScreen(),
            AllTransactionScreens(),
          ],
        ),
 */
