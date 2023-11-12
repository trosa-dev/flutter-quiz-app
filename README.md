# Flutter Quiz App

This is a quiz app built with Flutter. It allows the user to take a quiz with questions and see a summary of their answers at the end.

## Features

- Start screen with button to start quiz
- Question screen showing one question at a time
- Answer buttons for each option
- Advances to the next question after answering
- Shows final result with a summary of answers
- Allows restarting the quiz

## How it works

The app has 3 main screens:

1. **StartScreen:** Initial screen with a button to start the quiz.
2. **QuestionsScreen:** Shows the questions one at a time with answer options.
3. **ResultsScreen:** Displays the final result after all questions have been answered.

The flow is:

- Starts on the StartScreen
- On pressing "Start Quiz," it goes to the QuestionsScreen
- On each answer, advances to the next question
- When all questions are answered, goes to the ResultsScreen
- The ResultsScreen shows a summary of the answers and allows restarting the quiz

## Architecture

The app uses the standard Flutter StatefulWidget/StatelessWidget pattern.

The main widgets are:

- **App:** Manages app state and controls which screen is active.
- **StartScreen:** Initial stateless screen.
- **QuestionsScreen:** Manages the state of questions.
- **ResultsScreen:** Shows the final result stateless.

For the questions, a `QuizQuestion` class is used to represent each question with its answer options.

The app state is controlled by the `_AppState` class, which stores:

- List of selected answers
- Which screen is currently active

## Dependencies

- `google_fonts`: For fonts

## Running

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run`

## License

MIT
