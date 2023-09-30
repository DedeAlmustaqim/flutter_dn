import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

//carousel_header
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Builder(builder: (context) {
                List images = [
                  "https://img.freepik.com/premium-photo/man-cleaning-polishing-leather-shoes-with-brush-wooden-background_393202-1557.jpg?w=900",
                  "https://img.freepik.com/premium-photo/man-putting-new-custom-insole-shoe-feet-recreation-medicine-concept_555047-987.jpg?w=900",
                ];

                return Stack(
                  children: [
                    CarouselSlider(
                      carouselController: controller.carouselController,
                      options: CarouselOptions(
                        height: 180.0,
                        autoPlay: true,
                        enlargeCenterPage: false,
                        viewportFraction: 1.0,
                        onPageChanged: (index, reason) {
                          controller.currentIndex = index;
                          controller.setState(() {});
                        },
                      ),
                      items: images.map((imageUrl) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.grey[50],
                                image: DecorationImage(
                                  image: NetworkImage(
                                    imageUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                color: Colors.black.withOpacity(0.3),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Positioned(
                      width: MediaQuery.of(context).size.width,
                      bottom: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: images.asMap().entries.map((entry) {
                          bool isSelected =
                              controller.currentIndex == entry.key;
                          return GestureDetector(
                            onTap: () => controller.carouselController
                                .animateToPage(entry.key),
                            child: Container(
                              width: isSelected ? 40 : 6.0,
                              height: 6.0,
                              margin: EdgeInsets.only(
                                right: 6.0,
                                top: 12.0,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected ? primaryColor : Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(10.0),
                                height: 40,
                                color: Colors.white.withOpacity(0.5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    fillColor: Colors.transparent,
                                    // hintText: 'Search',
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.blueGrey[900],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.notifications_active_outlined,
                              size: 28.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              MdiIcons.cartPlus,
                              size: 28.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: List.generate(
                    controller.state.categories.length,
                    (index) {
                      var item = controller.state.categories[index];
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            // Get.to(MenuDetailView(
                            //   item: item,
                            // // ));
                            // Navigator.pushNamed(context, "/menu-detail",
                            //     arguments: {'item': item});
                            controller.selectedItem = item;
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  item['icon'],
                                ),
                              ),
                              SizedBox(height: 5),
                              SizedBox(
                                child: Text(
                                  '${item['title']}',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(controller.state.carousel.length,
                        (index) {
                  var item = controller.state.carousel[index];
                  return Container(
                    margin: EdgeInsets.only(
                      right: 10.0,
                    ),
                    clipBehavior: Clip.antiAlias,
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage('$item'))),
                  );
                })),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Testimoni",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 12.0,
                ),
                scrollDirection: Axis.horizontal,
                controller: ScrollController(),
                child: Row(
                  children: List.generate(
                    10,
                    (index) {
                      var item = {};
                      bool selected = index == 0;

                      return Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        // height: 300,
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10.0),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "Jhon Doe",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Container(
                            //   padding:
                            //       const EdgeInsets.symmetric(horizontal: 10.0),
                            //   child: QRatingField(
                            //     label: "Rating",
                            //     value: 3,
                            //     onChanged: (value) {
                            //       showInfoDialog(value.toString());
                            //     },
                            //   ),
                            // ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: QRatingField(
                                label: "Rating",
                                value: 3,
                                onChanged: (value) {
                                  showInfoDialog(value.toString());
                                },
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
