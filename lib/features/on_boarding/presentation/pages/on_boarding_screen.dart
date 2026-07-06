import 'package:flutter/material.dart';
import 'package:monasba_app/core/helpers/extensions.dart';
import 'package:monasba_app/core/resources/images_maneger.dart';
import 'package:monasba_app/core/resources/strings_maneger.dart';
import 'package:monasba_app/core/resources/colors_maneger.dart';
import 'package:monasba_app/core/resources/app_text_styles_maneger.dart';
import 'package:monasba_app/core/routing/routes.dart';
import 'package:monasba_app/features/home/presentation/pages/home_screen.dart';
import 'package:monasba_app/features/on_boarding/models/on_boarding_model.dart';
import 'package:monasba_app/features/on_boarding/widgets/onboarding_item_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<OnBoardingModel> onboardingItems = [
    OnBoardingModel(
      imagePath: ImagesManeger.onboarding1,
      title: StringsManeger.onBoading1Title,
      description: StringsManeger.onBoading1Description,
    ),
    OnBoardingModel(
      imagePath: ImagesManeger.onboarding2,
      title: StringsManeger.onBoading2Title,
      description: StringsManeger.onBoading2Description,
    ),
    OnBoardingModel(
      imagePath: ImagesManeger.onboarding3,
      title: StringsManeger.onBoading3Title,
      description: StringsManeger.onBoading3Description,
    ),
  ];

  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentIndex < onboardingItems.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPage() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void toSignUpScreen() {
    context.pushReplacementNamed(Routes.loginScreen);
  }

  void toLoginScreen() {
    context.pushReplacementNamed(Routes.loginScreen);
  }

  Widget _buildBottomButtons() {
    // First page
    if (_currentIndex == 0) {
      return Align(
        alignment: Alignment.centerLeft,
        child: InkWell(
          onTap: _nextPage,
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: ColorsManeger.primary,
            ),

            child: Icon(Icons.arrow_forward, color: Colors.white),
          ),
        ),
      );
    }

    // Last page
    if (_currentIndex == onboardingItems.length - 1) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Need Refactoring...
          SizedBox(
            width: double.infinity,
            height: 50,
            child: InkWell(
              onTap: _previousPage,
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorsManeger.primary,
                ),

                child: Center(
                  child: Text(
                    'تسجيل الآن',
                    style: AppTextStylesManeger.font15WhiteBold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),

          Text('!تسجيل الدخول', style: AppTextStylesManeger.font12GreyRegular),
        ],
      );
    }

    // Middle pages
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: _previousPage,
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: ColorsManeger.primary,
            ),

            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        InkWell(
          onTap: _nextPage,
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: ColorsManeger.primary,
            ),

            child: Icon(Icons.arrow_forward, color: Colors.white),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'تخطي',
                    style: AppTextStylesManeger.font15GreyRegular,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingItems.length,
                  onPageChanged: (value) {
                    setState(() {
                      _currentIndex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnboardingItemWidget(item: onboardingItems[index]);
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardingItems.length,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: _currentIndex == index ? 24 : 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:
                          _currentIndex == index
                              ? ColorsManeger.primary
                              : Colors.grey.shade300,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              _buildBottomButtons(),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
