import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:duolingo_app/src/models/question/question.dart';

part 'level.freezed.dart';

/// Enum representing the type of level.
/// It can be one of the following: audio, normal, or story.
enum LevelType { audio, normal, story }

/// Represents a level in the application.
/// Each level has a number, an ID, a list of questions, and a type.
@freezed
abstract class Level with _$Level {
  const factory Level({
    /// The unique identifier for the level.
    required String id,

    /// The number of the level.
    required int number,

    /// A list of questions associated with the level.
    required List<Question> questions,

    /// The type of the level, which can be audio, normal, or story.
    required LevelType type,

    /// The progress of the level, represented as a percentage.
    required double progress,

    /// Indicates whether the level is completed.
    required bool isCompleted,

    /// Indicates whether the level is legendary.
    /// A legendary level is a special type of level that is more challenging.
    required bool isLegendary,
  }) = _Level;
}
