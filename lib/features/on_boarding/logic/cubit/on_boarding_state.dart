part of 'on_boarding_cubit.dart';

final class OnBoardingState extends Equatable {
  int pageIndex;
  final PageController controller = PageController(initialPage: 0);
 
  @override
  List<Object> get props => [pageIndex, controller];
  OnBoardingState({this.pageIndex = 0});

}
