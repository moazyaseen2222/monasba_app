import 'package:flutter/material.dart';
import 'package:monasba_app/core/utils/app_colors.dart';
import 'package:monasba_app/core/utils/app_text_styles.dart';
import 'package:monasba_app/features/home/presentation/home_screen.dart';
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
      imagePath: 'assets/images/onboarding1.svg',
      title: 'نظّم مناسبتك بسهولة وذكاء',
      description:
          'ارفع صورة دعوتك الجاهزة، أضف تفاصيل المناسبة مثل الاسم والمكان والموعد، ودع التطبيق يتولى إرسالها لجميع المدعوين بطريقة أنيقة ومنظمة.',
    ),
    OnBoardingModel(
      imagePath: 'assets/images/onboarding2.svg',
      title: 'تابع المدعوين وتفاعلهم بكل سهولة',
      description:
          'اعرف من أكّد الحضور أو اعتذر فوراً، وراقب الإحصائيات لحظة بلحظة لتكون على اطلاع دائم بعدد الحاضرين.',
    ),
    OnBoardingModel(
      imagePath: 'assets/images/onboarding3.svg',
      title: 'استقبل الإهداءات الرقمية بكل راحة وأمان',
      description:
          'ادع ضيوفك يشاركون فرحتك بإرسال الهدايا المالية مباشرة عبر التطبيق، وكل المبالغ تُجمع في محفظة آمنة.',
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
              color: AppColors.primary,
            ),

            child: Icon(Icons.arrow_forward, color: Colors.white),
          ),
        ),
      );
    }

    // Last page
    if (_currentIndex == onboardingItems.length - 1) {
      return SizedBox(
        width: double.infinity,
        height: 50,
        child: InkWell(
          onTap: _previousPage,
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.primary,
            ),

            child: Center(
              child: Text('تسجيل الآن', style: AppTextStyles.font15WhiteBold),
            ),
          ),
        ),
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
              color: AppColors.primary,
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
              color: AppColors.primary,
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
                  child: Text('تخطي', style: AppTextStyles.font15GreyRegular),
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
                              ? AppColors.primary
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



// import 'package:flutter/material.dart';
// import 'package:monasba_app/core/utils/app_colors.dart';
// import 'package:monasba_app/core/utils/app_text_styles.dart';
// import 'package:monasba_app/features/home/presentation/home_screen.dart';
// import 'package:monasba_app/features/on_boarding/models/on_boarding_model.dart';
// import 'package:monasba_app/features/on_boarding/presentation/splach_screen.dart';
// import 'package:monasba_app/features/on_boarding/widgets/onboarding_item_widget.dart';

// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({super.key});

//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   final List<OnBoardingModel> onboardingItems = [
//     OnBoardingModel(
//       imagePath: 'assets/images/onboarding1.svg',
//       title: 'نظّم مناسبتك بسهولة وذكاء',
//       description:
//           'ارفع صورة دعوتك الجاهزة، أضف تفاصيل المناسبة مثل الاسم والمكان والموعد، ودع التطبيق يتولى إرسالها لجميع المدعوين بطريقة أنيقة ومنظمة.د',
//     ),
//     OnBoardingModel(
//       imagePath: 'assets/images/onboarding2.svg',
//       title: 'تابع المدعوين وتفاعلهم بكل سهولة  ',
//       description:
//           'ااعرف من أكّد الحضور أو اعتذر فوراً، وراقب الإحصائيات لحظة بلحظة لتكون على اطلاع دائم بعدد الحاضرين، وتدير مناسبتك بدون فوضى أو تكرار.',
//     ),
//     OnBoardingModel(
//       imagePath: 'assets/images/onboarding3.svg',
//       title: 'استقبل الإهداءات الرقمية بكل راحة وأمان',
//       description:
//           'ادع ضيوفك يشاركون فرحتك بإرسال الهدايا المالية مباشرة عبر التطبيق، وكل المبالغ تُجمع في محفظة آمنة مع سجل ذكي يذكّرك بمن أهدى لك سابقاً لتبادل الودّ في مناسبات المستقبل.',
//     ),
//   ];

//   int _currentIndex = 0;
//   final PageController _pageController = PageController();

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   void _nextPage() {
//     if (_currentIndex < onboardingItems.length - 1) {
//       _pageController.nextPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeIn,
//       );
//     } else {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const HomeScreen()),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
//         child: Column(
//           spacing: 20.0,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(right: 300.0),
//               child: InkWell(
//                 onTap: () {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(builder: (context) => const HomeScreen()),
//                   );
//                 },
//                 child: Text('تخطي', style: AppTextStyles.font15GreyRegular),
//               ),
//             ),
//             SizedBox(height: 20),
//             Flexible(
//               child: PageView.builder(
//                 controller: _pageController,
//                 itemCount: onboardingItems.length,
//                 onPageChanged:
//                     (value) => setState(() {
//                       _currentIndex = value;
//                     }),
//                 itemBuilder:
//                     (context, index) =>
//                         OnboardingItemWidget(item: onboardingItems[index]),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               spacing: 0.0,
//               children: List.generate(
//                 onboardingItems.length,
//                 (index) => AnimatedContainer(
//                   duration: const Duration(milliseconds: 100),
//                   width: _currentIndex == index ? 200 : 50,
//                   height: 10,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     color:
//                         _currentIndex == index
//                             ? AppColors.primary
//                             : Colors.grey.withOpacity(0.5),
//                   ),
//                 ),
//               ),
//             ),
            
            

//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //   children: [
//             //     // Back
//             //     CircleAvatar(
//             //       child: IconButton(
//             //         icon: const Icon(Icons.arrow_back),
//             //         onPressed: () {
//             //           if (_currentIndex > 0) {
//             //             _pageController.previousPage(
//             //               duration: const Duration(milliseconds: 300),
//             //               curve: Curves.ease,
//             //             );
//             //           }
//             //         },
//             //       ),
//             //     ),

                
//             //   ],
//             // ),
            
//           ],
//         ),
//       ),
//     );
//   }
// }
