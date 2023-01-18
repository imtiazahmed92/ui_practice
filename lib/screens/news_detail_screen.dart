import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_practice/app_styles.dart';
import 'package:ui_practice/size_config.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  const FullScreenSlider(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: kLighterWhite,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (() {
                              Navigator.pop(context);
                            }),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadious),
                                border: Border.all(
                                  color: kWhite,
                                ),
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Center(
                                  child: SvgPicture.asset(
                                      'assets/arrow_back_icon.svg')),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadious),
                              border: Border.all(
                                color: kWhite,
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Center(
                                child: SvgPicture.asset(
                                    'assets/bookmark_white_icon.svg')),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              transform: Matrix4.translationValues(0, -10, 0),
              child: Text(
                'Unravel mysteries\nof the Maldives',
                style: kPoppinsBold.copyWith(
                  color: kDarkBlue,
                  fontSize: SizeConfig.blockSizeHorizontal! * 7,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
                vertical: 16,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal! * 2.5,
              ),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadious),
                border: Border.all(
                  color: kBorderColor,
                ),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 13,
                    backgroundColor: kBlue,
                    backgroundImage: NetworkImage(
                      'https://png.pngtree.com/png-clipart/20220301/ourmid/pngtree-d-rendering-male-character-profile-with-green-mint-sweater-blue-eyes-png-image_4466258.png',
                    ),
                  ),
                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 2.5),
                  Text(
                    'Keanu Carpent May 17 • 8 min read',
                    overflow: TextOverflow.ellipsis,
                    style: kPoppinsRegular.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: kPoppinsMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kDarkBlue,
                ),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeHorizontal! * 5),
          ],
        ),
      ),
    );
  }
}

final List<String> imageList = [
  'https://images.unsplash.com/photo-1512100356356-de1b84283e18?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=475&q=80',
  'https://plus.unsplash.com/premium_photo-1666286163385-abe05f0326c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1375&q=80',
  'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({Key? key}) : super(key: key);

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 1;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: imageList
              .map(
                (item) => Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: SizeConfig.blockSizeVertical! * 50,
                    width: double.infinity,
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 52,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: SvgPicture.asset(
                          _current == entry.key
                              ? 'assets/carousel_indicator_enabled.svg'
                              : 'assets/carousel_indicator_disabled.svg',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
