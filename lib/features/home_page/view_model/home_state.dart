sealed class HomeState {}


final class HomeInitial extends HomeState {}


final class GetLessonListDataLoadingState extends HomeState {}
final class GetLessonListDataSuccessState extends HomeState {}
final class GetLessonListDataErrorState extends HomeState {
  final int error;
  GetLessonListDataErrorState({required this.error});
}
