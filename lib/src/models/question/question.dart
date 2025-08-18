import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

/// Enum representing the type of question.
/// It can be one of the following: choice, fillInTheBlank.
enum QuestionType { choice, fillInTheBlank }

/// Represents a question in the level.
/// Each question has an ID, type, question text, answer, options, and 
/// justification.
@freezed
abstract class Question with _$Question {
  const factory Question({
    /// The unique identifier for the question.
    required String id,

    /// The type of the question, which can be choice or fillInTheBlank.
    required QuestionType type,

    /// The text of the question.
    required String question,

    /// The correct answer to the question.
    required String answer,

    /// A list of options for the question, applicable for choice type questions.
    required List<String> options,

    /// Justification or explanation for the answer.
    /// This can be used to provide additional context or reasoning.
    required String justification,
  }) = _Question;
}
