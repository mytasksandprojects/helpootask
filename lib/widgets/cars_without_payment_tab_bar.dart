import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:helpootask/widgets/cars_without_payment_card.dart';

import '../Models/cars_without_payment_model.dart';

class CarsWithoutPaymentTabBar extends StatefulWidget {
  CarsWithoutPaymentTabBar({
    Key? key,
    required this.tabs,
  }) : super(key: key);
  final List<String>? tabs;

  @override
  State<CarsWithoutPaymentTabBar> createState() =>
      _CarsWithoutPaymentTabBarState();
}

class _CarsWithoutPaymentTabBarState extends State<CarsWithoutPaymentTabBar>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedTab = 0;
  List<CarsWithoutPaymentModel> data = [
    CarsWithoutPaymentModel(
        title: 'هذة السيارة مضافة من قبل شركة الدلتا للتامين',
        subTitle: 'تم التفعيل هذه السيارة حتى 12 / 5 / 2022',
        carBrandName: 'نيسان',
        carModelName: 'صنى',
        image: 'assets/images/images 1.png'),
    CarsWithoutPaymentModel(
        title: 'هذة السيارة مضافة من قبل شركة الدلتا للتامين',
        carBrandName: 'كيا',
        carModelName: 'سيراتو',
        image: 'assets/images/logo 1.png'),
    CarsWithoutPaymentModel(
        title: 'هذة السيارة مضافة من قبل شركة الدلتا للتامين',
        carBrandName: 'رينو',
        carModelName: 'ميجان',
        image: 'assets/images/logo 1.png'),
  ];

  @override
  void initState() {
    tabController = TabController(
        length: widget.tabs!.length, vsync: this, initialIndex: selectedTab);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned(
            child: TabBar(
              dividerColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                // Use the default focused overlay color
                return states.contains(MaterialState.focused)
                    ? null
                    : Colors.transparent;
              }),
              padding: EdgeInsets.zero,
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(),
              labelColor: Colors.white,
              onTap: (value) {
                setState(() {
                  selectedTab = value;
                  print(value);
                });
              },
              tabs: [
                for (int i = 0; i < widget.tabs!.length; i++)
                  Container(
                    child: Center(child: Text(widget.tabs![i])),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: selectedTab == i
                          ? Color(0xff44B649)
                          : Color(0xff7D7E80),
                    ),
                  )
              ],
              controller: tabController,
            ),
          ),
          Positioned.fill(
            top: 50,
            child: Container(
              color: Color(0xffDDDEDF),
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                clipBehavior: Clip.none,
                children: [
                  ListView.builder(
                      itemBuilder: (context, index) => CarsWithoutPaymentCard(
                          carsWithoutPaymentModel: data[index]),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: data.length),
                  Container()
                ],
                controller: tabController,
              ),
            ),
          )
        ],
      ),
    );
  }
}
