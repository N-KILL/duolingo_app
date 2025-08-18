// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Level {

/// The unique identifier for the level.
 String get id;/// The number of the level.
 int get number;/// A list of questions associated with the level.
 List<Question> get questions;/// The type of the level, which can be audio, normal, or story.
 LevelType get type;/// The progress of the level, represented as a percentage.
 double get progress;/// Indicates whether the level is completed.
 bool get isCompleted;/// Indicates whether the level is legendary.
/// A legendary level is a special type of level that is more challenging.
 bool get isLegendary;
/// Create a copy of Level
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelCopyWith<Level> get copyWith => _$LevelCopyWithImpl<Level>(this as Level, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Level&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&const DeepCollectionEquality().equals(other.questions, questions)&&(identical(other.type, type) || other.type == type)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.isLegendary, isLegendary) || other.isLegendary == isLegendary));
}


@override
int get hashCode => Object.hash(runtimeType,id,number,const DeepCollectionEquality().hash(questions),type,progress,isCompleted,isLegendary);

@override
String toString() {
  return 'Level(id: $id, number: $number, questions: $questions, type: $type, progress: $progress, isCompleted: $isCompleted, isLegendary: $isLegendary)';
}


}

/// @nodoc
abstract mixin class $LevelCopyWith<$Res>  {
  factory $LevelCopyWith(Level value, $Res Function(Level) _then) = _$LevelCopyWithImpl;
@useResult
$Res call({
 String id, int number, List<Question> questions, LevelType type, double progress, bool isCompleted, bool isLegendary
});




}
/// @nodoc
class _$LevelCopyWithImpl<$Res>
    implements $LevelCopyWith<$Res> {
  _$LevelCopyWithImpl(this._self, this._then);

  final Level _self;
  final $Res Function(Level) _then;

/// Create a copy of Level
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? questions = null,Object? type = null,Object? progress = null,Object? isCompleted = null,Object? isLegendary = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<Question>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LevelType,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,isLegendary: null == isLegendary ? _self.isLegendary : isLegendary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Level].
extension LevelPatterns on Level {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Level value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Level() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Level value)  $default,){
final _that = this;
switch (_that) {
case _Level():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Level value)?  $default,){
final _that = this;
switch (_that) {
case _Level() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int number,  List<Question> questions,  LevelType type,  double progress,  bool isCompleted,  bool isLegendary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Level() when $default != null:
return $default(_that.id,_that.number,_that.questions,_that.type,_that.progress,_that.isCompleted,_that.isLegendary);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int number,  List<Question> questions,  LevelType type,  double progress,  bool isCompleted,  bool isLegendary)  $default,) {final _that = this;
switch (_that) {
case _Level():
return $default(_that.id,_that.number,_that.questions,_that.type,_that.progress,_that.isCompleted,_that.isLegendary);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int number,  List<Question> questions,  LevelType type,  double progress,  bool isCompleted,  bool isLegendary)?  $default,) {final _that = this;
switch (_that) {
case _Level() when $default != null:
return $default(_that.id,_that.number,_that.questions,_that.type,_that.progress,_that.isCompleted,_that.isLegendary);case _:
  return null;

}
}

}

/// @nodoc


class _Level implements Level {
  const _Level({required this.id, required this.number, required final  List<Question> questions, required this.type, required this.progress, required this.isCompleted, required this.isLegendary}): _questions = questions;
  

/// The unique identifier for the level.
@override final  String id;
/// The number of the level.
@override final  int number;
/// A list of questions associated with the level.
 final  List<Question> _questions;
/// A list of questions associated with the level.
@override List<Question> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

/// The type of the level, which can be audio, normal, or story.
@override final  LevelType type;
/// The progress of the level, represented as a percentage.
@override final  double progress;
/// Indicates whether the level is completed.
@override final  bool isCompleted;
/// Indicates whether the level is legendary.
/// A legendary level is a special type of level that is more challenging.
@override final  bool isLegendary;

/// Create a copy of Level
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelCopyWith<_Level> get copyWith => __$LevelCopyWithImpl<_Level>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Level&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&const DeepCollectionEquality().equals(other._questions, _questions)&&(identical(other.type, type) || other.type == type)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.isLegendary, isLegendary) || other.isLegendary == isLegendary));
}


@override
int get hashCode => Object.hash(runtimeType,id,number,const DeepCollectionEquality().hash(_questions),type,progress,isCompleted,isLegendary);

@override
String toString() {
  return 'Level(id: $id, number: $number, questions: $questions, type: $type, progress: $progress, isCompleted: $isCompleted, isLegendary: $isLegendary)';
}


}

/// @nodoc
abstract mixin class _$LevelCopyWith<$Res> implements $LevelCopyWith<$Res> {
  factory _$LevelCopyWith(_Level value, $Res Function(_Level) _then) = __$LevelCopyWithImpl;
@override @useResult
$Res call({
 String id, int number, List<Question> questions, LevelType type, double progress, bool isCompleted, bool isLegendary
});




}
/// @nodoc
class __$LevelCopyWithImpl<$Res>
    implements _$LevelCopyWith<$Res> {
  __$LevelCopyWithImpl(this._self, this._then);

  final _Level _self;
  final $Res Function(_Level) _then;

/// Create a copy of Level
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? questions = null,Object? type = null,Object? progress = null,Object? isCompleted = null,Object? isLegendary = null,}) {
  return _then(_Level(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<Question>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LevelType,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,isLegendary: null == isLegendary ? _self.isLegendary : isLegendary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
