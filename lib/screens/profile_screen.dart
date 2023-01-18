import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_practice/app_styles.dart';
import 'package:ui_practice/screens/news_detail_screen.dart';
import 'package:ui_practice/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(kBorderRadious),
                      child: Image.network(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 3),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Elly Byers',
                              style: kPoppinsBold.copyWith(
                                color: kDarkBlue,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              ),
                            ),
                            Text(
                              'Auther & Writer',
                              style: kPoppinsRegular.copyWith(
                                color: kDarkBlue,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 42,
                            maxWidth: SizeConfig.blockSizeHorizontal! * 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadious),
                            color: kBlue,
                          ),
                          child: Center(
                            child: Text(
                              'Following',
                              style: kPoppinsMedium.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 2.7,
              ),
              Text(
                "Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..",
                style: kPoppinsMedium.copyWith(
                  color: kGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 2.7,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 3,
                  vertical: SizeConfig.blockSizeVertical! * 3.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadious),
                  color: kDarkBlue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '54.21k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizeVertical! * 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: kLighterBlue,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '2.11k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                          Text(
                            'Posts',
                            style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizeVertical! * 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: kLighterBlue,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '36.21k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                          Text(
                            'Following',
                            style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 2.7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Elly\'s Posts',
                    style: kPoppinsBold.copyWith(
                      color: kDarkBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  Text(
                    'View All',
                    style: kPoppinsMedium.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 2.7,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      margin: EdgeInsets.only(
                          bottom: SizeConfig.blockSizeVertical! * 2.5),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadious),
                              color: kWhite,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 24,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 3),
                                  color: kDarkBlue.withOpacity(0.051),
                                )
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadious),
                              child: Image.network(
                                'https://plus.unsplash.com/premium_photo-1666286163385-abe05f0326c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1375&q=80',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeVertical! * 2.7,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'News: Politics',
                                  style: kPoppinsRegular.copyWith(
                                    color: kDarkBlue,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 2.5,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 1,
                                ),
                                Text(
                                  'Iran\'s raging protest fiftth Iranian paramillatry me...',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: kPoppinsSemiBold.copyWith(
                                    color: kDarkBlue,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/calendar_icon.svg',
                                        ),
                                        SizedBox(
                                          width: SizeConfig.blockSizeVertical! *
                                              1.5,
                                        ),
                                        Text(
                                          '16th May',
                                          style: kPoppinsRegular.copyWith(
                                            color: kGrey,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                3,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/time_icon.svg',
                                        ),
                                        SizedBox(
                                          width: SizeConfig.blockSizeVertical! *
                                              1.5,
                                        ),
                                        Text(
                                          '09 : 31 pm',
                                          style: kPoppinsRegular.copyWith(
                                            color: kGrey,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.7,
              ),
              Row(
                children: [
                  Text(
                    'Popular From Elly',
                    style: kPoppinsBold.copyWith(
                      color: kDarkBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.7,
              ),
              SizedBox(
                height: 143,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NewsDetailScreen()));
                      },
                      child: Container(
                        height: 143,
                        width: 248,
                        margin: EdgeInsets.only(
                            right: SizeConfig.blockSizeHorizontal! * 2.5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(kBorderRadious),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
