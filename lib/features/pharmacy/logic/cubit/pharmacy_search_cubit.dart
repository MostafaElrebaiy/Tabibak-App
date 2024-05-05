import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_search_state.dart';
part 'pharmacy_search_cubit.freezed.dart';

class PharmacySearchCubit extends Cubit<PharmacySearchState> {
  PharmacySearchCubit() : super(PharmacySearchState.initial());
}
