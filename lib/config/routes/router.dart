import 'package:bnv_opendata/presentation/xelauikit_screens/main_screen.dart';
import 'package:bnv_opendata/utils/constants/app_constants.dart';
import 'package:bnv_opendata/widgets/xela_components/accordion_component.dart';
import 'package:bnv_opendata/widgets/xela_components/alert_component.dart';
import 'package:bnv_opendata/widgets/xela_components/badge_component.dart';
import 'package:bnv_opendata/widgets/xela_components/buttons_component.dart';
import 'package:bnv_opendata/widgets/xela_components/charts_component.dart';
import 'package:bnv_opendata/widgets/xela_components/checkbox_component.dart';
import 'package:bnv_opendata/widgets/xela_components/chips_component.dart';
import 'package:bnv_opendata/widgets/xela_components/colors_component.dart';
import 'package:bnv_opendata/widgets/xela_components/date_picker_component.dart';
import 'package:bnv_opendata/widgets/xela_components/dialogs_component.dart';
import 'package:bnv_opendata/widgets/xela_components/divider_component.dart';
import 'package:bnv_opendata/widgets/xela_components/number_input_component.dart';
import 'package:bnv_opendata/widgets/xela_components/radio_button_component.dart';
import 'package:bnv_opendata/widgets/xela_components/range_slider_input_component.dart';
import 'package:bnv_opendata/widgets/xela_components/segmented_control_component.dart';
import 'package:bnv_opendata/widgets/xela_components/slide_input_component.dart';
import 'package:bnv_opendata/widgets/xela_components/steps_component.dart';
import 'package:bnv_opendata/widgets/xela_components/tabs_component.dart';
import 'package:bnv_opendata/widgets/xela_components/text_input_component.dart';
import 'package:bnv_opendata/widgets/xela_components/textarea_component.dart';
import 'package:bnv_opendata/widgets/xela_components/toast_component.dart';
import 'package:bnv_opendata/widgets/xela_components/toggle_component.dart';
import 'package:bnv_opendata/widgets/xela_components/tooltips_component.dart';
import 'package:bnv_opendata/widgets/xela_components/typography_component.dart';
import 'package:bnv_opendata/widgets/xela_components/user_avatar_component.dart';
import 'package:flutter/material.dart';

typedef AppWidgetBuilder = Widget Function(BuildContext, RouteSettings);

class AppRouter {
  static const dfNamed = Navigator.defaultRouteName;

  ///Main App
  static const splash = '/splash';
  static const main = '/main';

  //Xela UI Screen
  static const typography = '/typography';
  static const colors = '/colors';
  static const accordion = '/accordion';
  static const alert = '/alert';
  static const avatar = '/avatar';
  static const badge = '/badge';
  static const button = '/button';
  static const chart = '/chart';
  static const chcheckboxart = '/checkbox';
  static const chips = '/chips';
  static const datepicker = '/datepicker';
  static const dialog = '/dialog';
  static const divider = '/divider';
  static const numberInput = '/numberInput';
  static const rangeSliderInput = '/rangeSliderInput';
  static const radioButton = '/radioButton';
  static const segmentedControl = '/segmentedControl';
  static const sliderInput = '/sliderInput';
  static const steps = '/steps';
  static const tab = '/tab';
  static const textarea = '/textarea';
  static const textInput = '/textInput';
  static const toast = '/toast';
  static const toggle = '/toggle';
  static const tooltip = '/tooltip';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case main:
        return MaterialPageRoute(builder: (ctx) => MainScreen());
      //Router screen ui xela kit
      case typography:
        return MaterialPageRoute(builder: (ctx) => TypographyComponent());
      case colors:
        return MaterialPageRoute(builder: (ctx) => ColorsComponent());
      case accordion:
        return MaterialPageRoute(builder: (ctx) => AccordionComponent());
      case alert:
        return MaterialPageRoute(builder: (ctx) => AlertComponent());
      case avatar:
        return MaterialPageRoute(builder: (ctx) => UserAvatarComponent());
      case badge:
        return MaterialPageRoute(builder: (ctx) => BadgeComponent());
      case button:
        return MaterialPageRoute(builder: (ctx) => ButtonsComponent());
      case chart:
        return MaterialPageRoute(builder: (ctx) => ChartsComponent());
      case chcheckboxart:
        return MaterialPageRoute(builder: (ctx) => CheckboxComponent());
      case chips:
        return MaterialPageRoute(builder: (ctx) => ChipsComponent());
      case datepicker:
        return MaterialPageRoute(builder: (ctx) => DatePickerComponent());
      case dialog:
        return MaterialPageRoute(builder: (ctx) => DialogsComponent());
      case divider:
        return MaterialPageRoute(builder: (ctx) => DividerComponent());
      case numberInput:
        return MaterialPageRoute(builder: (ctx) => NumberInputComponent());
      case rangeSliderInput:
        return MaterialPageRoute(builder: (ctx) => RangeSliderInputComponent());
      case radioButton:
        return MaterialPageRoute(builder: (ctx) => RadioButtonComponent());
      case segmentedControl:
        return MaterialPageRoute(builder: (ctx) => SegmentedControlComponent());
      case sliderInput:
        return MaterialPageRoute(builder: (ctx) => SliderInputComponent());
      case steps:
        return MaterialPageRoute(builder: (ctx) => StepsComponent());
      case tab:
        return MaterialPageRoute(builder: (ctx) => TabsComponent());
      case textarea:
        return MaterialPageRoute(builder: (ctx) => TextareaComponent());
      case textInput:
        return MaterialPageRoute(builder: (ctx) => TextInputComponent());
      case toast:
        return MaterialPageRoute(builder: (ctx) => ToastComponent());
      case toggle:
        return MaterialPageRoute(builder: (ctx) => ToggleComponent());
      case tooltip:
        return MaterialPageRoute(builder: (ctx) => TooltipsComponent());
    }
  }
}

class PageTransition<T> extends PageRouteBuilder<T> {
  /// Child for your next page
  final Widget child;

  /// Transition types
  ///  fade,rightToLeft,bottomToTop,rightToLeftWithFade
  final PageTransitionType type;

  /// Duration for your transition default is 300 ms
  final Duration duration;

  /// Duration for your pop transition default is 300 ms
  final Duration reverseDuration;

  /// Context for inherit theme
  final BuildContext? ctx;

  /// Optional inherit theme
  final bool inheritTheme;

  /// Page transition constructor. We can pass the next page as a child,
  PageTransition({
    required this.child,
    this.type = PageTransitionType.RIGHT_TO_LEFT_WITH_FADE,
    this.ctx,
    this.inheritTheme = false,
    this.duration = const Duration(milliseconds: 300),
    this.reverseDuration = const Duration(milliseconds: 300),
    RouteSettings? settings,
  })  : assert(
          inheritTheme,
          "'ctx' cannot be null when 'inheritTheme' is true",
        ),
        super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return inheritTheme
                ? InheritedTheme.captureAll(
                    ctx!,
                    child,
                  )
                : child;
          },
          transitionDuration: duration,
          reverseTransitionDuration: reverseDuration,
          settings: settings,
          maintainState: true,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            switch (type) {
              case PageTransitionType.FADE:
                return FadeTransition(opacity: animation, child: child);
                // ignore: dead_code
                break;
              case PageTransitionType.RIGHT_TO_LEFT:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
                // ignore: dead_code
                break;
              case PageTransitionType.BOTTOM_TO_TOP:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
                // ignore: dead_code
                break;
              case PageTransitionType.RIGHT_TO_LEFT_WITH_FADE:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(1, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  ),
                );
                // ignore: dead_code
                break;
            }
          },
        );
}
