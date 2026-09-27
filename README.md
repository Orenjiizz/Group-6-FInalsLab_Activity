# ITP107 Finals Lab 1 — Login → Sign-Up → Home (Flutter)

## How to run
1. Make sure Flutter is installed (`flutter doctor`).
2. From this folder: `flutter pub get`
3. `flutter run`

## What's implemented
- **Named routes** — all three screens are registered in `MaterialApp.routes`
  in `lib/main.dart` (`/login`, `/signup`, `/home`).
- **Two+ Navigator methods used:**
  - `Navigator.pushNamed` — Login → Sign-Up (keeps Login on the stack so the
    user can go back).
  - `Navigator.pushReplacementNamed` — Login → Home and Sign-Up → Home
    (replaces the auth screen so the user can't navigate "back" into a
    login/signup form once authenticated), and Home → Login on logout.
  - `Navigator.pop` — Sign-Up's back arrow and "Log In" link return to Login.
- **Data passed between screens** — the name entered on Sign-Up (or the
  email typed on Login) is passed as route arguments and read on Home via
  `ModalRoute.of(context)!.settings.arguments`, then shown in the welcome
  message.
- **Consistent UI** — `lib/theme/app_theme.dart` centralizes colors,
  input/button styling, and a shared `BrandBadge` header so Login, Sign-Up,
  and Home all look like one app rather than three unrelated screens.

## File structure
```
lib/
  main.dart                 # MaterialApp + named routes
  theme/app_theme.dart      # shared colors, ThemeData, BrandBadge widget
  screens/login_screen.dart
  screens/signup_screen.dart
  screens/home_screen.dart
pubspec.yaml
```

## Still up to your group
- The UI intentionally uses plain, default Material widgets (like a typical student lab) rather than heavy custom styling.
- Fill in the header of the lab form (names, section, professor, GitHub link).
- Assign/confirm the three roles (Navigation & Routing Lead, UI/UX Designer,
  Integration & Testing Lead) and be ready to explain your part.
- Take the required screenshots/screen recording of the full flow
  (Login → Sign-Up → Home → Logout) before zipping for submission.
- Rename the submission per the required format:
  `ITP107_FinalsLab1_Section_GroupNo`.
