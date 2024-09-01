import 'package:freezed_annotation/freezed_annotation.dart';

part 'finalized.freezed.dart';

@Freezed(finalize: true)
sealed class FinalizedFoo with _$FinalizedFoo {
  factory FinalizedFoo() = _FinalizedFoo;
}

@Freezed(finalize: true)
sealed class FinalizedBar with _$FinalizedBar {
  factory FinalizedBar() = _FinalizedBar;
}

@Freezed(finalize: true)
sealed class FinalizedMultiple with _$FinalizedMultiple {
  factory FinalizedMultiple.a() = FinalizedMultipleA;
  factory FinalizedMultiple.b() = FinalizedMultipleB;
  factory FinalizedMultiple.c() = FinalizedMultipleC;
}

@Freezed()
sealed class FinalizedDefault with _$FinalizedDefault {
  factory FinalizedDefault.foo() = FinalizedDefaultFoo;
  factory FinalizedDefault.bar() = FinalizedDefaultBar;
}

@Freezed(finalize: false)
sealed class FinalizedDisabled with _$FinalizedDisabled {
  factory FinalizedDisabled.foo() = FinalizedDisabledFoo;
  factory FinalizedDisabled.bar() = FinalizedDisabledBar;
}
