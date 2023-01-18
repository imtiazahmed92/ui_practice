import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_practice/app_styles.dart';
import 'package:ui_practice/screens/news_detail_screen.dart';
import 'package:ui_practice/screens/profile_screen.dart';
import 'package:ui_practice/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
                child: Container(
                  height: 51,
                  width: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadious),
                    color: kLightBlue,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back',
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  Text(
                    'Monday, 3 October',
                    style: kPoppinsRegular.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadious),
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  color: kDarkBlue.withOpacity(0.051),
                  offset: const Offset(0.0, 3),
                  blurRadius: 24,
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: kPoppinsRegular.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      hintText: 'Search for article...',
                      border: kBorder,
                      errorBorder: kBorder,
                      disabledBorder: kBorder,
                      focusedBorder: kBorder,
                      focusedErrorBorder: kBorder,
                      hintStyle: kPoppinsRegular.copyWith(
                        color: kLightGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kBlue,
                    borderRadius: BorderRadius.circular(kBorderRadious),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/search_icon.svg'),
                    color: kWhite,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 38),
                  child: Text(
                    '#Health',
                    style: kPoppinsMedium.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 304,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(right: 20),
                  height: 304,
                  width: 255,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadious),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        color: kDarkBlue.withOpacity(0.051),
                        offset: const Offset(0.0, 3),
                        blurRadius: 24,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NewsDetailScreen()));
                        },
                        child: Container(
                          height: 164,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadious),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://a.cdn-hotels.com/gdcs/production109/d34/0e2d7854-11df-4ca9-8018-211e8ae372e5.jpg',
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Flexible(
                        child: Text(
                          'Bali - Uniqure, unmatched. There is no other place like Bali in this world.',
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 19,
                                backgroundColor: kLightBlue,
                                backgroundImage: NetworkImage(
                                  'https://miro.medium.com/fit/c/176/176/0*XwI6wgcdr6_JvzX5',
                                ),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Imtiaz Ahmed',
                                    style: kPoppinsSemiBold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                  ),
                                  Text(
                                    'Sep 9, 2022',
                                    style: kPoppinsRegular.copyWith(
                                      color: kGrey,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3.3,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 60),
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                  color: kLightWhite,
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadious),
                                ),
                                child:
                                    SvgPicture.asset('assets/share_icon.svg'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Short for You',
                style: kPoppinsBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                ),
              ),
              Text(
                'View all',
                style: kPoppinsMedium.copyWith(
                  color: kBlue,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
            ],
          ),
          const SizedBox(height: 19),
          SizedBox(
            height: 88,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Container(
                  padding: const EdgeInsets.all(9),
                  margin: const EdgeInsets.only(right: 20),
                  width: 208,
                  height: 88,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(kBorderRadious),
                    boxShadow: [
                      BoxShadow(
                        color: kDarkBlue.withOpacity(0.051),
                        offset: const Offset(0.0, 3),
                        blurRadius: 24,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadious),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://media.cntraveler.com/photos/5ace264528064f5504f54726/16:9/w_2560%2Cc_limit/GettyImages-154246242.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/play_icon.svg',
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Top Trending Islan in 2022',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: kPoppinsSemiBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              ),
                            ),
                            const SizedBox(height: 9),
                            Row(
                              children: [
                                SvgPicture.asset('assets/eye_icon.svg'),
                                const SizedBox(width: 4),
                                Text(
                                  '40,999',
                                  style: kPoppinsMedium.copyWith(
                                    color: kGrey,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
