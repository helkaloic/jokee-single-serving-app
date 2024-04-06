import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jokee_single_serving/app/constants/app_const.dart';
import 'package:jokee_single_serving/app/extensions/build_context.dart';
import 'package:jokee_single_serving/app/theme/colors.dart';
import 'package:jokee_single_serving/app/theme/text_style.dart';
import 'package:jokee_single_serving/presentation/widgets/button.dart';

import '../../app/constants/gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _HomePageAppBar(),
          _HomePageBody(),
        ],
      ),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  Future<void> _onFunnyTap(String id) async {}

  Future<void> _onNotFunnyTap(String id) async {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          _buildBanner(context),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 30.w, vertical: context.orientation(50, 20).h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final text = SelectableText(
                          r'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."',
                          style: context.textStyle.bodyS.grey600,
                        );
                        if (constraints.maxHeight >
                            context.screenHeight * 0.5) {
                          return SingleChildScrollView(
                            child: text,
                          );
                        } else {
                          return text;
                        }
                      },
                    ),
                  ),
                  // Container(
                  //   height: 1.h,
                  //   color: context.colors.divider,
                  // ),
                  SizedBox(height: 20.h),
                  _buildButtons(context, "")
                ],
              ),
            ),
          ),
          _buildCopyright(context),
        ],
      ),
    );
  }

  Widget _buildCopyright(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: context.colors.divider)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppConst.copyRightContent,
            style: context.textStyle.labelM.grey,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5.h),
          Text(
            AppConst.copyRight,
            style: context.textStyle.labelL.grey600,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildButtons(BuildContext context, String id) {
    final widgets = [
      TextButtonCustom(
        onTap: () => _onFunnyTap(id),
        text: AppConst.funnyText,
      ),
      TextButtonCustom(
        onTap: () => _onNotFunnyTap(id),
        text: AppConst.notFunnyText,
        color: context.colors.green,
      ),
    ];
    return SizedBox(
      width: context.screenWidth,
      child: context.screenWidth < 310
          ? Column(
              children: [widgets.first, SizedBox(height: 5.h), widgets.last],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: widgets,
            ),
    );
  }

  Widget _buildBanner(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: context.screenHeight / 6,
      ),
      child: Container(
        width: context.screenWidth,
        color: context.colors.green,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppConst.bannerTitle,
              style: context.textStyle.bodyL.white,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.screenHeight > context.screenWidth ? 20.h : 10.h,
            ),
            Text(
              AppConst.bannerSubTitle,
              style: context.textStyle.labelL.white,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _HomePageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade100)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildLogo(),
            _buildListTileInfo(context),
          ],
        ),
      ),
    );
  }

  Widget _buildListTileInfo(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              AppConst.handicraftedBy,
              style: context.textStyle.labelM.grey,
            ),
            Text(
              AppConst.handicraftedByAuthor,
              style: context.textStyle.labelM,
            ),
          ],
        ),
        SizedBox(width: 8.w),
        ClipOval(
          child: Image.asset(
            Assets.image.sunflower.path,
            height: 40.r,
            width: 40.r,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildLogo() {
    return Image.asset(
      Assets.image.logo.path,
      fit: BoxFit.cover,
      height: 40.r,
      width: 40.r,
    );
  }
}
