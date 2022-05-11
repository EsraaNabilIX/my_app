import 'dart:async';

import 'package:my_app/domian/models.dart';
import 'package:my_app/presentation/base/base_view_model.dart';

import '../../resources/assets_manager.dart';
import '../../resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInput, OnBoardingViewModelOutput {
  // OnBoarding view model inputs
  // stream controller output "communication"
  final StreamController _streamController =
      StreamController<SliderViewObject>();
  late final List<SliderObject> _list;
  @override
  void dispose() {
    // TODO: implement dispose
    _streamController.close();
  }

  @override
  void start() {
    _list = _getSliderData();
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPagedChanged() {
    // TODO: implement onPagedChanged
  }

  @override
  // on boarding view model input
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  // on boarding view model output
  //event is the type dynamic of stream

  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);

  // on boarding private function
  List<SliderObject> _getSliderData() => [
        SliderObject(AppStrings.onBoardingTitle1,
            AppStrings.onBoardingSubTitle1, ImagesAssets.onBoardingLogo1),
        SliderObject(AppStrings.onBoardingTitle2,
            AppStrings.onBoardingSubTitle2, ImagesAssets.onBoardingLogo2),
        SliderObject(AppStrings.onBoardingTitle3,
            AppStrings.onBoardingSubTitle3, ImagesAssets.onBoardingLogo3),
        SliderObject(AppStrings.onBoardingTitle4,
            AppStrings.onBoardingSubTitle4, ImagesAssets.onBoardingLogo4),
      ];
}

// inputs means that "orders" that our view model receive from view
abstract class OnBoardingViewModelInput {
  void goNext();
  void goPrevious();
  void onPagedChanged();
  // stream controller inputs
  Sink get inputSliderViewObject;
}

abstract class OnBoardingViewModelOutput {
  Stream<SliderViewObject> get outputSliderViewObject;
}
