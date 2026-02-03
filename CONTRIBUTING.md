# Contributing to Wirdi

Thanks for your interest in contributing! This guide covers the workflow and expectations for changes.

## Development Setup

1. Install Flutter (SDK 3.3+).
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app locally:
   ```bash
   flutter run
   ```

## Branching & Commits

- Create a feature branch from `main`.
- Keep commits small and focused.
- Use clear, present-tense commit messages (e.g., "Add group creation screen").

## Code Style

- Follow standard Flutter/Dart formatting (`dart format .`).
- Prefer small, reusable widgets.
- Add meaningful comments when logic is non-obvious.

## Testing

- Run tests when adding or modifying logic:
  ```bash
  flutter test
  ```
- If tests are not available, note this in your PR.

## Pull Requests

- Include a concise summary of changes.
- Mention any tests run.
- Link related issues if applicable.
