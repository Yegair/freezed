import 'package:freezed_annotation/freezed_annotation.dart';

part 'finalized.freezed.dart';

@Freezed(finalize: true)
sealed class FinalizedFoo with _$FinalizedFoo {
  const FinalizedFoo._();
  const factory FinalizedFoo() = _FinalizedFoo;
}

@Freezed(finalize: true)
sealed class FinalizedBar with _$FinalizedBar {
  const FinalizedBar._();
  const factory FinalizedBar() = _FinalizedBar;
}

@Freezed(finalize: true)
sealed class FinalizedMultiple with _$FinalizedMultiple {
  const FinalizedMultiple._();

  const factory FinalizedMultiple.a() = FinalizedMultipleA;
  const factory FinalizedMultiple.b() = FinalizedMultipleB;
  const factory FinalizedMultiple.c() = FinalizedMultipleC;
}
