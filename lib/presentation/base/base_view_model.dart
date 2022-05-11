abstract class BaseViewModel extends BaseViewModelInput
    with BaseViewModelOutput {
  //shared var and fun that will be used throw any view model

}

abstract class BaseViewModelInput {
  void start(); // start view model jop
  void dispose(); // will be called when view model die
}

abstract class BaseViewModelOutput {}
