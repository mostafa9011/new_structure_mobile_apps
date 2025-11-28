# How to Use Slang for Translations

## Translation Files Location
Translation files are now in `lib/i18n/`:
- `lib/i18n/strings.i18n.json` - English (base language)
- `lib/i18n/strings_ar.i18n.json` - Arabic

## Using Translations in Your Code

### Simple Access with `t`
Slang provides a global `t` variable for accessing translations:

// Use translations directly
Text(t.welcome)
Text(t.email)
Text(t.password)

### Language Detection
// Check current language
bool isArabic = context.isArabic;
bool isEnglish = context.isEnglish;
String languageCode = context.languageCode;

// Or directly via slang
AppLocale currentLocale = LocaleSettings.currentLocale;

## Changing Language

### From Anywhere in Your App
// Change to Arabic
LocaleSettings.setLocale(AppLocale.ar);

// Change to English
LocaleSettings.setLocale(AppLocale.en);

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

## Example Usage in Your App

### Login Screen
```dart
TextField(
  decoration: InputDecoration(
    labelText: t.email,
    hintText: t.enterEmailPlaceholder,
  ),
)

```
