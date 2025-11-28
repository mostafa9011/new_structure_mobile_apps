/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 258 (129 per locale)
///
/// Built on 2025-11-28 at 19:31 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	ar(languageCode: 'ar', build: _StringsAr.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get connectTimeout => 'The connection to the server timed out. Please check your network connection and try again.';
	String get sendTimeout => 'Sending the request took too long. Please verify your connection and try again.';
	String get receiveTimeout => 'Waiting for the server response took too long. Please try again later.';
	String get cancelMessage => 'The operation was canceled by the user.';
	String get badRequest => 'The request was invalid or malformed. Please verify your input and try again.';
	String get unknown => 'An unknown error occurred. Please try again later.';
	String get unauthorized => 'You are not authorized. Please log in and try again.';
	String get forbidden => 'Access is forbidden. You do not have permission to perform this action.';
	String get notFound => 'The requested resource was not found on the server.';
	String get serverError => 'The server encountered an internal error. Please try again later.';
	String get unknownError => 'An unexpected error occurred. Please try again later.';
	String get timeout => 'The operation timed out. Please check your network and try again.';
	String get loading => 'Loading...';
	String get connectionError => 'An error occurred while connecting to the server. Please try again later.';
	String get changeLanguage => 'Change Language';
	String get changeTheme => 'Change Theme';
	String get pm => 'PM';
	String get am => 'AM';
	String get fieldRequired => 'This field is required';
	String get selectLanguage => 'Select Language';
	String get changeLanguageText => 'Change your Language';
	String get frensh => 'French';
	String get english => 'English';
	String get arabic => 'Arabic';
	String get next => 'Next';
	String get getStarted => 'Get Started';
	String get email => 'Email';
	String get enterEmailPlaceholder => 'Enter Your Email';
	String get password => 'Password';
	String get enterPasswordPlaceholder => 'Enter Your Password';
	String get rememberMe => 'Remember Me';
	String get forgetPassword => 'Forget Password';
	String get signIn => 'Sign in';
	String get alreadyHaveAccountText => 'Already have account ?';
	String get signUp => 'Sign UP';
	String get welcome => 'Welcome';
	String get guest => 'Guest';
	String get submit => 'Submit';
	String get confirmpassword => 'ConFirm Password';
	String get save => 'Save';
	String get done => 'Done';
	String get aboutUs => 'About Us';
	String get noResultFound => 'No Result Found';
	String get ok => 'OK';
	String get termsAndConditions => 'Terms & Conditions';
	String get privacyPolicy => 'Privacy Policy';
	String get contactUs => 'Contact Us';
	String get logOut => 'Log Out';
	String get yes => 'Yes';
	String get allNotifications => 'All Notifications';
	String get unRead => 'Unread';
	String get read => 'Read';
	String get delete => 'Delete';
	String get update => 'Update';
	String get thereAreNoNotifications => 'There are no notifications';
	String get show => 'Show';
	String get cancel => 'Cancel';
	String get emptyData => 'Empty Data';
	String get noResultsFound => 'No Result Found';
	String get viewAll => 'View All';
	String get search => 'Search';
	String get cart => 'Cart';
	String get home => 'Home';
	String get products => 'Products';
	String get profile => 'Profile';
	String get apply => 'Apply';
	String get send => 'Send';
	String get fullName => 'Full Name';
	String get enterYourFullName => 'Enter your full name';
	String get enterYourEmail => 'Enter your email';
	String get phoneNumber => 'Phone Number';
	String get enterYourPhoneNumber => 'Enter your phone number';
	String get deleteAll => 'Delete All';
	String get favorites => 'Favorites';
	String get updateProfile => 'Update Profile';
	String get notifications => 'Notifications';
	String get deleteAccount => 'Delete Account';
	String get changePassword => 'Change Password';
	String get favorite => 'Favorite';
	String get settings => 'Settings';
	String get languages => 'Languages';
	String get support => 'Support';
	String get logout => 'Logout';
	String get firstName => 'First Name';
	String get enterYourFirstName => 'Enter your first name';
	String get lastName => 'Last Name';
	String get enterYourLastName => 'Enter your last name';
	String get gender => 'Gender';
	String get enterYourGender => 'Enter your gender';
	String get enterYourPassword => 'Enter your password';
	String get enetrNewPassword => 'Enter new password';
	String get changeYourLanguage => 'Change your language';
	String get french => 'French';
	String get approved => 'Approved';
	String get hello => 'Hello';
	String get skip => 'Skip';
	String get cancelled => 'Cancelled';
	String get newPassword => 'New Password';
	String get enterNewPassword => 'Enter New Password';
	String get oldPassword => 'Old Password';
	String get enterOldPassword => 'Enter Old Password';
	String get confirmPassword => 'Confirm Password';
	String get enterConfirmPassword => 'Enter Confirm Password';
	String get invalidEmail => 'Invalid Email';
	String get passwordNotMatch => 'Password Not Match';
	String get fieldRequiredHint => 'Field Required';
	String get country => 'Country';
	String get selectYourCountry => 'Select Your Country';
	String get city => 'City';
	String get back => 'back';
	String get sms => 'SMS';
	String get showMore => 'Show More';
	String get address => 'Address';
	String get checkout => 'Checkout';
	String get toUploadFiles => 'To Upload Files';
	String get mb => 'MB';
	String get invalidFileType => 'Invalid File Type';
	String get isRequired => 'is required';
	String get edit => 'Edit';
	String get view => 'View';
	String get success => 'Success';
	String get invalidPhoneNumber => 'Invalid Phone Number';
	String get phoneRequired => 'Phone Number is required';
	String get phoneNumberHint => 'Enter your phone number';
	String get enterOldPasswordHint => 'Enter your old password';
	String get enterNewPasswordHint => 'Enter your new password';
	String get enterConfirmPasswordHint => 'Enter your confirm password';
	String get passwordRequired => 'Password is required';
	String get play => 'Play';
}

// Path: <root>
class _StringsAr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsAr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsAr _root = this; // ignore: unused_field

	// Translations
	@override String get connectTimeout => 'انتهت مهلة الاتصال بالخادم. يرجى التحقق من اتصال الشبكة والمحاولة مرة أخرى.';
	@override String get sendTimeout => 'استغرق إرسال الطلب وقتًا طويلاً. يرجى التحقق من الاتصال والمحاولة مجددًا.';
	@override String get receiveTimeout => 'استغرق انتظار استجابة الخادم وقتًا طويلاً. يرجى المحاولة لاحقًا.';
	@override String get cancelMessage => 'تم إلغاء العملية من قبل المستخدم.';
	@override String get badRequest => 'الطلب غير صالح أو به خطأ. يرجى التحقق من البيانات والمحاولة مجددًا.';
	@override String get unknown => 'حدث خطأ غير معروف. يرجى المحاولة لاحقًا.';
	@override String get unauthorized => 'أنت غير مصرح لك. الرجاء تسجيل الدخول والمحاولة مرة أخرى.';
	@override String get forbidden => 'الوصول مرفوض. ليس لديك الإذن للقيام بهذا الإجراء.';
	@override String get notFound => 'المورد المطلوب غير موجود على الخادم.';
	@override String get serverError => 'حدث خطأ داخلي في الخادم. الرجاء المحاولة لاحقاً.';
	@override String get unknownError => 'حدث خطأ غير متوقع. الرجاء المحاولة لاحقاً.';
	@override String get timeout => 'انتهت مهلة العملية. يرجى التحقق من الشبكة والمحاولة مرة أخرى.';
	@override String get loading => 'جارٍ التحميل...';
	@override String get connectionError => 'حدث خطأ أثناء الاتصال بالخادم. الرجاء المحاولة لاحقاً.';
	@override String get changeLanguage => 'تغيير اللغة';
	@override String get changeTheme => 'تغيير المظهر';
	@override String get pm => 'مساءً';
	@override String get am => 'صباحًا';
	@override String get fieldRequired => 'هذا الحقل مطلوب';
	@override String get selectLanguage => 'اختر اللغة';
	@override String get changeLanguageText => 'غيّر لغتك';
	@override String get frensh => 'الفرنسية';
	@override String get english => 'الإنجليزية';
	@override String get arabic => 'العربية';
	@override String get next => 'التالي';
	@override String get getStarted => 'ابدأ الآن';
	@override String get email => 'البريد الإلكتروني';
	@override String get enterEmailPlaceholder => 'أدخل بريدك الإلكتروني';
	@override String get password => 'كلمة المرور';
	@override String get enterPasswordPlaceholder => 'أدخل كلمة المرور';
	@override String get rememberMe => 'تذكرني';
	@override String get forgetPassword => 'نسيت كلمة المرور؟';
	@override String get signIn => 'تسجيل الدخول';
	@override String get alreadyHaveAccountText => 'هل لديك حساب بالفعل؟';
	@override String get signUp => 'إنشاء حساب';
	@override String get welcome => 'مرحبًا';
	@override String get guest => 'زائر';
	@override String get submit => 'إرسال';
	@override String get confirmpassword => 'تأكيد كلمة المرور';
	@override String get save => 'حفظ';
	@override String get done => 'تم';
	@override String get aboutUs => 'من نحن';
	@override String get noResultFound => 'لم يتم العثور على نتائج';
	@override String get ok => 'موافق';
	@override String get termsAndConditions => 'الشروط والأحكام';
	@override String get privacyPolicy => 'سياسة الخصوصية';
	@override String get contactUs => 'تواصل معنا';
	@override String get logOut => 'تسجيل الخروج';
	@override String get yes => 'نعم';
	@override String get allNotifications => 'كل الإشعارات';
	@override String get unRead => 'غير المقروءة';
	@override String get read => 'المقروءة';
	@override String get delete => 'حذف';
	@override String get update => 'تحديث';
	@override String get thereAreNoNotifications => 'لا توجد إشعارات';
	@override String get show => 'عرض';
	@override String get cancel => 'إلغاء';
	@override String get emptyData => 'لا توجد بيانات';
	@override String get noResultsFound => 'لم يتم العثور على نتائج';
	@override String get viewAll => 'عرض الكل';
	@override String get search => 'بحث';
	@override String get cart => 'السلة';
	@override String get home => 'الرئيسية';
	@override String get products => 'المنتجات';
	@override String get profile => 'الملف الشخصي';
	@override String get apply => 'تقديم';
	@override String get send => 'إرسال';
	@override String get fullName => 'الاسم الكامل';
	@override String get enterYourFullName => 'أدخل اسمك الكامل';
	@override String get enterYourEmail => 'أدخل بريدك الإلكتروني';
	@override String get phoneNumber => 'رقم الهاتف';
	@override String get enterYourPhoneNumber => 'أدخل رقم هاتفك';
	@override String get deleteAll => 'حذف الكل';
	@override String get favorites => 'المفضلة';
	@override String get updateProfile => 'تحديث الملف الشخصي';
	@override String get notifications => 'الإشعارات';
	@override String get deleteAccount => 'حذف الحساب';
	@override String get changePassword => 'تغيير كلمة المرور';
	@override String get favorite => 'مفضل';
	@override String get settings => 'الإعدادات';
	@override String get languages => 'اللغات';
	@override String get support => 'الدعم';
	@override String get logout => 'تسجيل الخروج';
	@override String get firstName => 'الاسم الأول';
	@override String get enterYourFirstName => 'أدخل اسمك الأول';
	@override String get lastName => 'اسم العائلة';
	@override String get enterYourLastName => 'أدخل اسم العائلة';
	@override String get gender => 'الجنس';
	@override String get enterYourGender => 'أدخل جنسك';
	@override String get enterYourPassword => 'أدخل كلمة المرور';
	@override String get enetrNewPassword => 'أدخل كلمة المرور الجديدة';
	@override String get changeYourLanguage => 'غيّر لغتك';
	@override String get french => 'الفرنسية';
	@override String get approved => 'تمت الموافقة';
	@override String get hello => 'مرحبًا';
	@override String get skip => 'تخطي';
	@override String get cancelled => 'تم الإلغاء';
	@override String get newPassword => 'كلمة المرور الجديدة';
	@override String get enterNewPassword => 'أدخل كلمة المرور الجديدة';
	@override String get oldPassword => 'كلمة المرور القديمة';
	@override String get enterOldPassword => 'أدخل كلمة المرور القديمة';
	@override String get confirmPassword => 'تأكيد كلمة المرور';
	@override String get enterConfirmPassword => 'أدخل تأكيد كلمة المرور';
	@override String get invalidEmail => 'بريد إلكتروني غير صالح';
	@override String get passwordNotMatch => 'كلمتا المرور غير متطابقتين';
	@override String get fieldRequiredHint => 'هذا الحقل مطلوب';
	@override String get country => 'الدولة';
	@override String get selectYourCountry => 'اختر دولتك';
	@override String get city => 'المدينة';
	@override String get back => 'رجوع';
	@override String get sms => 'رسالة نصية';
	@override String get showMore => 'عرض المزيد';
	@override String get address => 'العنوان';
	@override String get checkout => 'الدفع';
	@override String get toUploadFiles => 'لرفع الملفات';
	@override String get mb => 'ميغابايت';
	@override String get invalidFileType => 'نوع ملف غير صالح';
	@override String get isRequired => 'مطلوب';
	@override String get edit => 'تعديل';
	@override String get view => 'عرض';
	@override String get success => 'نجاح';
	@override String get invalidPhoneNumber => 'رقم الهاتف غير صالح';
	@override String get phoneRequired => 'رقم الهاتف مطلوب';
	@override String get phoneNumberHint => 'ادخل رقم هاتفك';
	@override String get enterOldPasswordHint => 'ادخل كلمة المرور القديمة';
	@override String get enterNewPasswordHint => 'ادخل كلمة المرور الجديدة';
	@override String get enterConfirmPasswordHint => 'ادخل تاءكيد كلمة المرور';
	@override String get passwordRequired => 'كلمة المرور مطلوبة';
	@override String get play => 'يلعب';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'connectTimeout': return 'The connection to the server timed out. Please check your network connection and try again.';
			case 'sendTimeout': return 'Sending the request took too long. Please verify your connection and try again.';
			case 'receiveTimeout': return 'Waiting for the server response took too long. Please try again later.';
			case 'cancelMessage': return 'The operation was canceled by the user.';
			case 'badRequest': return 'The request was invalid or malformed. Please verify your input and try again.';
			case 'unknown': return 'An unknown error occurred. Please try again later.';
			case 'unauthorized': return 'You are not authorized. Please log in and try again.';
			case 'forbidden': return 'Access is forbidden. You do not have permission to perform this action.';
			case 'notFound': return 'The requested resource was not found on the server.';
			case 'serverError': return 'The server encountered an internal error. Please try again later.';
			case 'unknownError': return 'An unexpected error occurred. Please try again later.';
			case 'timeout': return 'The operation timed out. Please check your network and try again.';
			case 'loading': return 'Loading...';
			case 'connectionError': return 'An error occurred while connecting to the server. Please try again later.';
			case 'changeLanguage': return 'Change Language';
			case 'changeTheme': return 'Change Theme';
			case 'pm': return 'PM';
			case 'am': return 'AM';
			case 'fieldRequired': return 'This field is required';
			case 'selectLanguage': return 'Select Language';
			case 'changeLanguageText': return 'Change your Language';
			case 'frensh': return 'French';
			case 'english': return 'English';
			case 'arabic': return 'Arabic';
			case 'next': return 'Next';
			case 'getStarted': return 'Get Started';
			case 'email': return 'Email';
			case 'enterEmailPlaceholder': return 'Enter Your Email';
			case 'password': return 'Password';
			case 'enterPasswordPlaceholder': return 'Enter Your Password';
			case 'rememberMe': return 'Remember Me';
			case 'forgetPassword': return 'Forget Password';
			case 'signIn': return 'Sign in';
			case 'alreadyHaveAccountText': return 'Already have account ?';
			case 'signUp': return 'Sign UP';
			case 'welcome': return 'Welcome';
			case 'guest': return 'Guest';
			case 'submit': return 'Submit';
			case 'confirmpassword': return 'ConFirm Password';
			case 'save': return 'Save';
			case 'done': return 'Done';
			case 'aboutUs': return 'About Us';
			case 'noResultFound': return 'No Result Found';
			case 'ok': return 'OK';
			case 'termsAndConditions': return 'Terms & Conditions';
			case 'privacyPolicy': return 'Privacy Policy';
			case 'contactUs': return 'Contact Us';
			case 'logOut': return 'Log Out';
			case 'yes': return 'Yes';
			case 'allNotifications': return 'All Notifications';
			case 'unRead': return 'Unread';
			case 'read': return 'Read';
			case 'delete': return 'Delete';
			case 'update': return 'Update';
			case 'thereAreNoNotifications': return 'There are no notifications';
			case 'show': return 'Show';
			case 'cancel': return 'Cancel';
			case 'emptyData': return 'Empty Data';
			case 'noResultsFound': return 'No Result Found';
			case 'viewAll': return 'View All';
			case 'search': return 'Search';
			case 'cart': return 'Cart';
			case 'home': return 'Home';
			case 'products': return 'Products';
			case 'profile': return 'Profile';
			case 'apply': return 'Apply';
			case 'send': return 'Send';
			case 'fullName': return 'Full Name';
			case 'enterYourFullName': return 'Enter your full name';
			case 'enterYourEmail': return 'Enter your email';
			case 'phoneNumber': return 'Phone Number';
			case 'enterYourPhoneNumber': return 'Enter your phone number';
			case 'deleteAll': return 'Delete All';
			case 'favorites': return 'Favorites';
			case 'updateProfile': return 'Update Profile';
			case 'notifications': return 'Notifications';
			case 'deleteAccount': return 'Delete Account';
			case 'changePassword': return 'Change Password';
			case 'favorite': return 'Favorite';
			case 'settings': return 'Settings';
			case 'languages': return 'Languages';
			case 'support': return 'Support';
			case 'logout': return 'Logout';
			case 'firstName': return 'First Name';
			case 'enterYourFirstName': return 'Enter your first name';
			case 'lastName': return 'Last Name';
			case 'enterYourLastName': return 'Enter your last name';
			case 'gender': return 'Gender';
			case 'enterYourGender': return 'Enter your gender';
			case 'enterYourPassword': return 'Enter your password';
			case 'enetrNewPassword': return 'Enter new password';
			case 'changeYourLanguage': return 'Change your language';
			case 'french': return 'French';
			case 'approved': return 'Approved';
			case 'hello': return 'Hello';
			case 'skip': return 'Skip';
			case 'cancelled': return 'Cancelled';
			case 'newPassword': return 'New Password';
			case 'enterNewPassword': return 'Enter New Password';
			case 'oldPassword': return 'Old Password';
			case 'enterOldPassword': return 'Enter Old Password';
			case 'confirmPassword': return 'Confirm Password';
			case 'enterConfirmPassword': return 'Enter Confirm Password';
			case 'invalidEmail': return 'Invalid Email';
			case 'passwordNotMatch': return 'Password Not Match';
			case 'fieldRequiredHint': return 'Field Required';
			case 'country': return 'Country';
			case 'selectYourCountry': return 'Select Your Country';
			case 'city': return 'City';
			case 'back': return 'back';
			case 'sms': return 'SMS';
			case 'showMore': return 'Show More';
			case 'address': return 'Address';
			case 'checkout': return 'Checkout';
			case 'toUploadFiles': return 'To Upload Files';
			case 'mb': return 'MB';
			case 'invalidFileType': return 'Invalid File Type';
			case 'isRequired': return 'is required';
			case 'edit': return 'Edit';
			case 'view': return 'View';
			case 'success': return 'Success';
			case 'invalidPhoneNumber': return 'Invalid Phone Number';
			case 'phoneRequired': return 'Phone Number is required';
			case 'phoneNumberHint': return 'Enter your phone number';
			case 'enterOldPasswordHint': return 'Enter your old password';
			case 'enterNewPasswordHint': return 'Enter your new password';
			case 'enterConfirmPasswordHint': return 'Enter your confirm password';
			case 'passwordRequired': return 'Password is required';
			case 'play': return 'Play';
			default: return null;
		}
	}
}

extension on _StringsAr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'connectTimeout': return 'انتهت مهلة الاتصال بالخادم. يرجى التحقق من اتصال الشبكة والمحاولة مرة أخرى.';
			case 'sendTimeout': return 'استغرق إرسال الطلب وقتًا طويلاً. يرجى التحقق من الاتصال والمحاولة مجددًا.';
			case 'receiveTimeout': return 'استغرق انتظار استجابة الخادم وقتًا طويلاً. يرجى المحاولة لاحقًا.';
			case 'cancelMessage': return 'تم إلغاء العملية من قبل المستخدم.';
			case 'badRequest': return 'الطلب غير صالح أو به خطأ. يرجى التحقق من البيانات والمحاولة مجددًا.';
			case 'unknown': return 'حدث خطأ غير معروف. يرجى المحاولة لاحقًا.';
			case 'unauthorized': return 'أنت غير مصرح لك. الرجاء تسجيل الدخول والمحاولة مرة أخرى.';
			case 'forbidden': return 'الوصول مرفوض. ليس لديك الإذن للقيام بهذا الإجراء.';
			case 'notFound': return 'المورد المطلوب غير موجود على الخادم.';
			case 'serverError': return 'حدث خطأ داخلي في الخادم. الرجاء المحاولة لاحقاً.';
			case 'unknownError': return 'حدث خطأ غير متوقع. الرجاء المحاولة لاحقاً.';
			case 'timeout': return 'انتهت مهلة العملية. يرجى التحقق من الشبكة والمحاولة مرة أخرى.';
			case 'loading': return 'جارٍ التحميل...';
			case 'connectionError': return 'حدث خطأ أثناء الاتصال بالخادم. الرجاء المحاولة لاحقاً.';
			case 'changeLanguage': return 'تغيير اللغة';
			case 'changeTheme': return 'تغيير المظهر';
			case 'pm': return 'مساءً';
			case 'am': return 'صباحًا';
			case 'fieldRequired': return 'هذا الحقل مطلوب';
			case 'selectLanguage': return 'اختر اللغة';
			case 'changeLanguageText': return 'غيّر لغتك';
			case 'frensh': return 'الفرنسية';
			case 'english': return 'الإنجليزية';
			case 'arabic': return 'العربية';
			case 'next': return 'التالي';
			case 'getStarted': return 'ابدأ الآن';
			case 'email': return 'البريد الإلكتروني';
			case 'enterEmailPlaceholder': return 'أدخل بريدك الإلكتروني';
			case 'password': return 'كلمة المرور';
			case 'enterPasswordPlaceholder': return 'أدخل كلمة المرور';
			case 'rememberMe': return 'تذكرني';
			case 'forgetPassword': return 'نسيت كلمة المرور؟';
			case 'signIn': return 'تسجيل الدخول';
			case 'alreadyHaveAccountText': return 'هل لديك حساب بالفعل؟';
			case 'signUp': return 'إنشاء حساب';
			case 'welcome': return 'مرحبًا';
			case 'guest': return 'زائر';
			case 'submit': return 'إرسال';
			case 'confirmpassword': return 'تأكيد كلمة المرور';
			case 'save': return 'حفظ';
			case 'done': return 'تم';
			case 'aboutUs': return 'من نحن';
			case 'noResultFound': return 'لم يتم العثور على نتائج';
			case 'ok': return 'موافق';
			case 'termsAndConditions': return 'الشروط والأحكام';
			case 'privacyPolicy': return 'سياسة الخصوصية';
			case 'contactUs': return 'تواصل معنا';
			case 'logOut': return 'تسجيل الخروج';
			case 'yes': return 'نعم';
			case 'allNotifications': return 'كل الإشعارات';
			case 'unRead': return 'غير المقروءة';
			case 'read': return 'المقروءة';
			case 'delete': return 'حذف';
			case 'update': return 'تحديث';
			case 'thereAreNoNotifications': return 'لا توجد إشعارات';
			case 'show': return 'عرض';
			case 'cancel': return 'إلغاء';
			case 'emptyData': return 'لا توجد بيانات';
			case 'noResultsFound': return 'لم يتم العثور على نتائج';
			case 'viewAll': return 'عرض الكل';
			case 'search': return 'بحث';
			case 'cart': return 'السلة';
			case 'home': return 'الرئيسية';
			case 'products': return 'المنتجات';
			case 'profile': return 'الملف الشخصي';
			case 'apply': return 'تقديم';
			case 'send': return 'إرسال';
			case 'fullName': return 'الاسم الكامل';
			case 'enterYourFullName': return 'أدخل اسمك الكامل';
			case 'enterYourEmail': return 'أدخل بريدك الإلكتروني';
			case 'phoneNumber': return 'رقم الهاتف';
			case 'enterYourPhoneNumber': return 'أدخل رقم هاتفك';
			case 'deleteAll': return 'حذف الكل';
			case 'favorites': return 'المفضلة';
			case 'updateProfile': return 'تحديث الملف الشخصي';
			case 'notifications': return 'الإشعارات';
			case 'deleteAccount': return 'حذف الحساب';
			case 'changePassword': return 'تغيير كلمة المرور';
			case 'favorite': return 'مفضل';
			case 'settings': return 'الإعدادات';
			case 'languages': return 'اللغات';
			case 'support': return 'الدعم';
			case 'logout': return 'تسجيل الخروج';
			case 'firstName': return 'الاسم الأول';
			case 'enterYourFirstName': return 'أدخل اسمك الأول';
			case 'lastName': return 'اسم العائلة';
			case 'enterYourLastName': return 'أدخل اسم العائلة';
			case 'gender': return 'الجنس';
			case 'enterYourGender': return 'أدخل جنسك';
			case 'enterYourPassword': return 'أدخل كلمة المرور';
			case 'enetrNewPassword': return 'أدخل كلمة المرور الجديدة';
			case 'changeYourLanguage': return 'غيّر لغتك';
			case 'french': return 'الفرنسية';
			case 'approved': return 'تمت الموافقة';
			case 'hello': return 'مرحبًا';
			case 'skip': return 'تخطي';
			case 'cancelled': return 'تم الإلغاء';
			case 'newPassword': return 'كلمة المرور الجديدة';
			case 'enterNewPassword': return 'أدخل كلمة المرور الجديدة';
			case 'oldPassword': return 'كلمة المرور القديمة';
			case 'enterOldPassword': return 'أدخل كلمة المرور القديمة';
			case 'confirmPassword': return 'تأكيد كلمة المرور';
			case 'enterConfirmPassword': return 'أدخل تأكيد كلمة المرور';
			case 'invalidEmail': return 'بريد إلكتروني غير صالح';
			case 'passwordNotMatch': return 'كلمتا المرور غير متطابقتين';
			case 'fieldRequiredHint': return 'هذا الحقل مطلوب';
			case 'country': return 'الدولة';
			case 'selectYourCountry': return 'اختر دولتك';
			case 'city': return 'المدينة';
			case 'back': return 'رجوع';
			case 'sms': return 'رسالة نصية';
			case 'showMore': return 'عرض المزيد';
			case 'address': return 'العنوان';
			case 'checkout': return 'الدفع';
			case 'toUploadFiles': return 'لرفع الملفات';
			case 'mb': return 'ميغابايت';
			case 'invalidFileType': return 'نوع ملف غير صالح';
			case 'isRequired': return 'مطلوب';
			case 'edit': return 'تعديل';
			case 'view': return 'عرض';
			case 'success': return 'نجاح';
			case 'invalidPhoneNumber': return 'رقم الهاتف غير صالح';
			case 'phoneRequired': return 'رقم الهاتف مطلوب';
			case 'phoneNumberHint': return 'ادخل رقم هاتفك';
			case 'enterOldPasswordHint': return 'ادخل كلمة المرور القديمة';
			case 'enterNewPasswordHint': return 'ادخل كلمة المرور الجديدة';
			case 'enterConfirmPasswordHint': return 'ادخل تاءكيد كلمة المرور';
			case 'passwordRequired': return 'كلمة المرور مطلوبة';
			case 'play': return 'يلعب';
			default: return null;
		}
	}
}
