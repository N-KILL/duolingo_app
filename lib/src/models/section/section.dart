import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:duolingo_app/src/models/level/level.dart';

part 'section.freezed.dart';

/// Represents a section in the application.
/// Each section has an ID and levels.
@freezed
abstract class Section with _$Section {
  const factory Section({
    /// The unique identifier for the section.
    required String id,

    /// The number of the section.
    required int number,

    /// A list of levels associated with the section.
    /// Each level contains questions and other properties.
    required List<Level> levels,
  }) = _Section;
}
