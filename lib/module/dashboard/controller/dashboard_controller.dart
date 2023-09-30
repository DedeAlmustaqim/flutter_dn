import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import '../../../state_util.dart';
import '../state/dashboard_state.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;
  Map? selectedItem;
  DashboardState state = DashboardState();

  @override
  void initState() {
    Get.put(this);
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
}
