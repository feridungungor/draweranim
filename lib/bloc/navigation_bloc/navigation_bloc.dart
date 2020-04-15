import 'package:bloc/bloc.dart';
import 'package:flutter_slider_anim_nav/pages/home_page.dart';
import 'package:flutter_slider_anim_nav/pages/myaccountpage.dart';
import 'package:flutter_slider_anim_nav/pages/myorderspage.dart';

enum NavigationEvents{
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
}

abstract class NavigationStates{}

class NavigationBloc extends Bloc<NavigationEvents,NavigationStates>{
  @override
  NavigationStates get initialState => MyAccountPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch(event){
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrdersPage();
        break;
    }
  }
}