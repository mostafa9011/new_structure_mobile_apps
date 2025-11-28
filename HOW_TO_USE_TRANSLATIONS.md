# How to Use Slang for Translations

## Overview
Your app now uses **slang** for type-safe translations. All flutter_gen and assets/localization files have been removed.

## Translation Files Location
Translation files are now in `lib/i18n/`:
- `lib/i18n/strings.i18n.json` - English (base language)
- `lib/i18n/strings_ar.i18n.json` - Arabic

## Using Translations in Your Code

### Simple Access with `t`
Slang provides a global `t` variable for accessing translations:

```dart
import 'package:new_structure/i18n/strings.g.dart';

// Use translations directly
Text(t.welcome)
Text(t.email)
Text(t.password)
```

### Via Context Extension
You can also use the `tr` getter from your context extension:

```dart
// In any widget with context
Text(context.tr.signIn)
Text(context.tr.signUp)
```

### Language Detection
```dart
// Check current language
bool isArabic = context.isArabic;
bool isEnglish = context.isEnglish;
String languageCode = context.languageCode;

// Or directly via slang
AppLocale currentLocale = LocaleSettings.currentLocale;
```

## Changing Language

### From Anywhere in Your App
```dart
import 'package:new_structure/i18n/strings.g.dart';

// Change to Arabic
LocaleSettings.setLocale(AppLocale.ar);

// Change to English
LocaleSettings.setLocale(AppLocale.en);
```

### Update Your ConfigCubit
You'll need to update your `ConfigCubit` to use slang's locale system instead of the old AppLocalizations. Here's how:

```dart
// In your config_cubit.dart, update the changeLanguage method:
void changeLanguage(String languageCode) {
  final locale = languageCode == 'ar' ? AppLocale.ar : AppLocale.en;
  LocaleSettings.setLocale(locale);
  emit(state.copyWith(locale: Locale(languageCode)));
}
```

## Adding New Translations

### 1. Add to JSON Files
Edit `lib/i18n/strings.i18n.json`:
```json
{
  "newKey": "New Translation"
}
```

Edit `lib/i18n/strings_ar.i18n.json`:
```json
{
  "newKey": "ترجمة جديدة"
}
```

### 2. Regenerate
Run this command to regenerate the translation files:
```bash
dart run slang
```

### 3. Use in Code
```dart
Text(t.newKey)
```

## Available Locales
- `AppLocale.en` - English
- `AppLocale.ar` - Arabic  

## Key Benefits Over flutter_gen
✅ **Type-safe** - Autocomplete and compile-time checking  
✅ **No assets folder** - Translations are pure Dart code  
✅ **Hot reload friendly** - Changes appear instantly  
✅ **Global access** - Use `t` anywhere without context  
✅ **No deprecation warnings** - Modern and actively maintained  

## Generated Files
- `lib/i18n/strings.g.dart` - Generated translation code (DO NOT EDIT manually)

This file is auto-generated. Commit it to git so your team has the translations available.

## Example Usage in Your App

### Login Screen
```dart
TextField(
  decoration: InputDecoration(
    labelText: t.email,
    hintText: t.enterEmailPlaceholder,
  ),
)

ElevatedButton(
  onPressed: () => login(),
  child: Text(t.signIn),
)
```

### Error Messages
```dart
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text(t.invalidEmail)),
);
```

### Navigation
```dart
Text(t.home)
Text(t.profile)
Text(t.settings)
```

## Common Patterns

### Validation Messages
All your validation messages are available:
```dart
t.fieldRequired
t.invalidEmail
t.passwordNotMatch
t.phoneRequired
```

### Buttons & Actions
```dart
t.submit
t.save
t.cancel
t.delete
t.update
t.edit
```

### Status Messages
```dart
t.loading
t.success
t.done
t.approved
t.cancelled
```

## Need Help?
- Official docs: https://pub.dev/packages/slang
- All your existing translation keys work the same way, just use `t.keyName` instead of `AppLocalizations.of(context)!.keyName`
