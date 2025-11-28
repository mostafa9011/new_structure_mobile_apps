///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'The connection to the server timed out. Please check your network connection and try again.'
	String get connectTimeout => 'The connection to the server timed out. Please check your network connection and try again.';

	/// en: 'Sending the request took too long. Please verify your connection and try again.'
	String get sendTimeout => 'Sending the request took too long. Please verify your connection and try again.';

	/// en: 'Waiting for the server response took too long. Please try again later.'
	String get receiveTimeout => 'Waiting for the server response took too long. Please try again later.';

	/// en: 'The operation was canceled by the user.'
	String get cancelMessage => 'The operation was canceled by the user.';

	/// en: 'The request was invalid or malformed. Please verify your input and try again.'
	String get badRequest => 'The request was invalid or malformed. Please verify your input and try again.';

	/// en: 'An unknown error occurred. Please try again later.'
	String get unknown => 'An unknown error occurred. Please try again later.';

	/// en: 'You are not authorized. Please log in and try again.'
	String get unauthorized => 'You are not authorized. Please log in and try again.';

	/// en: 'Access is forbidden. You do not have permission to perform this action.'
	String get forbidden => 'Access is forbidden. You do not have permission to perform this action.';

	/// en: 'The requested resource was not found on the server.'
	String get notFound => 'The requested resource was not found on the server.';

	/// en: 'The server encountered an internal error. Please try again later.'
	String get serverError => 'The server encountered an internal error. Please try again later.';

	/// en: 'An unexpected error occurred. Please try again later.'
	String get unknownError => 'An unexpected error occurred. Please try again later.';

	/// en: 'The operation timed out. Please check your network and try again.'
	String get timeout => 'The operation timed out. Please check your network and try again.';

	/// en: 'Loading...'
	String get loading => 'Loading...';

	/// en: 'An error occurred while connecting to the server. Please try again later.'
	String get connectionError => 'An error occurred while connecting to the server. Please try again later.';

	/// en: 'Change Language'
	String get changeLanguage => 'Change Language';

	/// en: 'Change Theme'
	String get changeTheme => 'Change Theme';

	/// en: 'PM'
	String get pm => 'PM';

	/// en: 'AM'
	String get am => 'AM';

	/// en: 'This field is required'
	String get fieldRequired => 'This field is required';

	/// en: 'Select Language'
	String get selectLanguage => 'Select Language';

	/// en: 'Change your Language'
	String get changeLanguageText => 'Change your Language';

	/// en: 'French'
	String get frensh => 'French';

	/// en: 'English'
	String get english => 'English';

	/// en: 'Arabic'
	String get arabic => 'Arabic';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Get Started'
	String get getStarted => 'Get Started';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Enter Your Email'
	String get enterEmailPlaceholder => 'Enter Your Email';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'Enter Your Password'
	String get enterPasswordPlaceholder => 'Enter Your Password';

	/// en: 'Remember Me'
	String get rememberMe => 'Remember Me';

	/// en: 'Forget Password'
	String get forgetPassword => 'Forget Password';

	/// en: 'Sign in'
	String get signIn => 'Sign in';

	/// en: 'Already have account ?'
	String get alreadyHaveAccountText => 'Already have account ?';

	/// en: 'Sign UP'
	String get signUp => 'Sign UP';

	/// en: 'Welcome'
	String get welcome => 'Welcome';

	/// en: 'Guest'
	String get guest => 'Guest';

	/// en: 'Submit'
	String get submit => 'Submit';

	/// en: 'ConFirm Password'
	String get confirmpassword => 'ConFirm Password';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Done'
	String get done => 'Done';

	/// en: 'About Us'
	String get aboutUs => 'About Us';

	/// en: 'No Result Found'
	String get noResultFound => 'No Result Found';

	/// en: 'OK'
	String get ok => 'OK';

	/// en: 'Terms & Conditions'
	String get termsAndConditions => 'Terms & Conditions';

	/// en: 'Privacy Policy'
	String get privacyPolicy => 'Privacy Policy';

	/// en: 'Contact Us'
	String get contactUs => 'Contact Us';

	/// en: 'Log Out'
	String get logOut => 'Log Out';

	/// en: 'Yes'
	String get yes => 'Yes';

	/// en: 'All Notifications'
	String get allNotifications => 'All Notifications';

	/// en: 'Unread'
	String get unRead => 'Unread';

	/// en: 'Read'
	String get read => 'Read';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Update'
	String get update => 'Update';

	/// en: 'There are no notifications'
	String get thereAreNoNotifications => 'There are no notifications';

	/// en: 'Show'
	String get show => 'Show';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Empty Data'
	String get emptyData => 'Empty Data';

	/// en: 'No Result Found'
	String get noResultsFound => 'No Result Found';

	/// en: 'View All'
	String get viewAll => 'View All';

	/// en: 'Search'
	String get search => 'Search';

	/// en: 'Cart'
	String get cart => 'Cart';

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Products'
	String get products => 'Products';

	/// en: 'Profile'
	String get profile => 'Profile';

	/// en: 'Apply'
	String get apply => 'Apply';

	/// en: 'Send'
	String get send => 'Send';

	/// en: 'Full Name'
	String get fullName => 'Full Name';

	/// en: 'Enter your full name'
	String get enterYourFullName => 'Enter your full name';

	/// en: 'Enter your email'
	String get enterYourEmail => 'Enter your email';

	/// en: 'Phone Number'
	String get phoneNumber => 'Phone Number';

	/// en: 'Enter your phone number'
	String get enterYourPhoneNumber => 'Enter your phone number';

	/// en: 'Delete All'
	String get deleteAll => 'Delete All';

	/// en: 'Favorites'
	String get favorites => 'Favorites';

	/// en: 'Update Profile'
	String get updateProfile => 'Update Profile';

	/// en: 'Notifications'
	String get notifications => 'Notifications';

	/// en: 'Delete Account'
	String get deleteAccount => 'Delete Account';

	/// en: 'Change Password'
	String get changePassword => 'Change Password';

	/// en: 'Favorite'
	String get favorite => 'Favorite';

	/// en: 'Settings'
	String get settings => 'Settings';

	/// en: 'Languages'
	String get languages => 'Languages';

	/// en: 'Support'
	String get support => 'Support';

	/// en: 'Logout'
	String get logout => 'Logout';

	/// en: 'First Name'
	String get firstName => 'First Name';

	/// en: 'Enter your first name'
	String get enterYourFirstName => 'Enter your first name';

	/// en: 'Last Name'
	String get lastName => 'Last Name';

	/// en: 'Enter your last name'
	String get enterYourLastName => 'Enter your last name';

	/// en: 'Gender'
	String get gender => 'Gender';

	/// en: 'Enter your gender'
	String get enterYourGender => 'Enter your gender';

	/// en: 'Enter your password'
	String get enterYourPassword => 'Enter your password';

	/// en: 'Enter new password'
	String get enetrNewPassword => 'Enter new password';

	/// en: 'Change your language'
	String get changeYourLanguage => 'Change your language';

	/// en: 'French'
	String get french => 'French';

	/// en: 'Approved'
	String get approved => 'Approved';

	/// en: 'Hello'
	String get hello => 'Hello';

	/// en: 'Skip'
	String get skip => 'Skip';

	/// en: 'Cancelled'
	String get cancelled => 'Cancelled';

	/// en: 'New Password'
	String get newPassword => 'New Password';

	/// en: 'Enter New Password'
	String get enterNewPassword => 'Enter New Password';

	/// en: 'Old Password'
	String get oldPassword => 'Old Password';

	/// en: 'Enter Old Password'
	String get enterOldPassword => 'Enter Old Password';

	/// en: 'Confirm Password'
	String get confirmPassword => 'Confirm Password';

	/// en: 'Enter Confirm Password'
	String get enterConfirmPassword => 'Enter Confirm Password';

	/// en: 'Invalid Email'
	String get invalidEmail => 'Invalid Email';

	/// en: 'Password Not Match'
	String get passwordNotMatch => 'Password Not Match';

	/// en: 'Field Required'
	String get fieldRequiredHint => 'Field Required';

	/// en: 'Country'
	String get country => 'Country';

	/// en: 'Select Your Country'
	String get selectYourCountry => 'Select Your Country';

	/// en: 'City'
	String get city => 'City';

	/// en: 'back'
	String get back => 'back';

	/// en: 'SMS'
	String get sms => 'SMS';

	/// en: 'Show More'
	String get showMore => 'Show More';

	/// en: 'Address'
	String get address => 'Address';

	/// en: 'Checkout'
	String get checkout => 'Checkout';

	/// en: 'To Upload Files'
	String get toUploadFiles => 'To Upload Files';

	/// en: 'MB'
	String get mb => 'MB';

	/// en: 'Invalid File Type'
	String get invalidFileType => 'Invalid File Type';

	/// en: 'is required'
	String get isRequired => 'is required';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'View'
	String get view => 'View';

	/// en: 'Success'
	String get success => 'Success';

	/// en: 'Invalid Phone Number'
	String get invalidPhoneNumber => 'Invalid Phone Number';

	/// en: 'Phone Number is required'
	String get phoneRequired => 'Phone Number is required';

	/// en: 'Enter your phone number'
	String get phoneNumberHint => 'Enter your phone number';

	/// en: 'Enter your old password'
	String get enterOldPasswordHint => 'Enter your old password';

	/// en: 'Enter your new password'
	String get enterNewPasswordHint => 'Enter your new password';

	/// en: 'Enter your confirm password'
	String get enterConfirmPasswordHint => 'Enter your confirm password';

	/// en: 'Password is required'
	String get passwordRequired => 'Password is required';

	/// en: 'Play'
	String get play => 'Play';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'connectTimeout' => 'The connection to the server timed out. Please check your network connection and try again.',
			'sendTimeout' => 'Sending the request took too long. Please verify your connection and try again.',
			'receiveTimeout' => 'Waiting for the server response took too long. Please try again later.',
			'cancelMessage' => 'The operation was canceled by the user.',
			'badRequest' => 'The request was invalid or malformed. Please verify your input and try again.',
			'unknown' => 'An unknown error occurred. Please try again later.',
			'unauthorized' => 'You are not authorized. Please log in and try again.',
			'forbidden' => 'Access is forbidden. You do not have permission to perform this action.',
			'notFound' => 'The requested resource was not found on the server.',
			'serverError' => 'The server encountered an internal error. Please try again later.',
			'unknownError' => 'An unexpected error occurred. Please try again later.',
			'timeout' => 'The operation timed out. Please check your network and try again.',
			'loading' => 'Loading...',
			'connectionError' => 'An error occurred while connecting to the server. Please try again later.',
			'changeLanguage' => 'Change Language',
			'changeTheme' => 'Change Theme',
			'pm' => 'PM',
			'am' => 'AM',
			'fieldRequired' => 'This field is required',
			'selectLanguage' => 'Select Language',
			'changeLanguageText' => 'Change your Language',
			'frensh' => 'French',
			'english' => 'English',
			'arabic' => 'Arabic',
			'next' => 'Next',
			'getStarted' => 'Get Started',
			'email' => 'Email',
			'enterEmailPlaceholder' => 'Enter Your Email',
			'password' => 'Password',
			'enterPasswordPlaceholder' => 'Enter Your Password',
			'rememberMe' => 'Remember Me',
			'forgetPassword' => 'Forget Password',
			'signIn' => 'Sign in',
			'alreadyHaveAccountText' => 'Already have account ?',
			'signUp' => 'Sign UP',
			'welcome' => 'Welcome',
			'guest' => 'Guest',
			'submit' => 'Submit',
			'confirmpassword' => 'ConFirm Password',
			'save' => 'Save',
			'done' => 'Done',
			'aboutUs' => 'About Us',
			'noResultFound' => 'No Result Found',
			'ok' => 'OK',
			'termsAndConditions' => 'Terms & Conditions',
			'privacyPolicy' => 'Privacy Policy',
			'contactUs' => 'Contact Us',
			'logOut' => 'Log Out',
			'yes' => 'Yes',
			'allNotifications' => 'All Notifications',
			'unRead' => 'Unread',
			'read' => 'Read',
			'delete' => 'Delete',
			'update' => 'Update',
			'thereAreNoNotifications' => 'There are no notifications',
			'show' => 'Show',
			'cancel' => 'Cancel',
			'emptyData' => 'Empty Data',
			'noResultsFound' => 'No Result Found',
			'viewAll' => 'View All',
			'search' => 'Search',
			'cart' => 'Cart',
			'home' => 'Home',
			'products' => 'Products',
			'profile' => 'Profile',
			'apply' => 'Apply',
			'send' => 'Send',
			'fullName' => 'Full Name',
			'enterYourFullName' => 'Enter your full name',
			'enterYourEmail' => 'Enter your email',
			'phoneNumber' => 'Phone Number',
			'enterYourPhoneNumber' => 'Enter your phone number',
			'deleteAll' => 'Delete All',
			'favorites' => 'Favorites',
			'updateProfile' => 'Update Profile',
			'notifications' => 'Notifications',
			'deleteAccount' => 'Delete Account',
			'changePassword' => 'Change Password',
			'favorite' => 'Favorite',
			'settings' => 'Settings',
			'languages' => 'Languages',
			'support' => 'Support',
			'logout' => 'Logout',
			'firstName' => 'First Name',
			'enterYourFirstName' => 'Enter your first name',
			'lastName' => 'Last Name',
			'enterYourLastName' => 'Enter your last name',
			'gender' => 'Gender',
			'enterYourGender' => 'Enter your gender',
			'enterYourPassword' => 'Enter your password',
			'enetrNewPassword' => 'Enter new password',
			'changeYourLanguage' => 'Change your language',
			'french' => 'French',
			'approved' => 'Approved',
			'hello' => 'Hello',
			'skip' => 'Skip',
			'cancelled' => 'Cancelled',
			'newPassword' => 'New Password',
			'enterNewPassword' => 'Enter New Password',
			'oldPassword' => 'Old Password',
			'enterOldPassword' => 'Enter Old Password',
			'confirmPassword' => 'Confirm Password',
			'enterConfirmPassword' => 'Enter Confirm Password',
			'invalidEmail' => 'Invalid Email',
			'passwordNotMatch' => 'Password Not Match',
			'fieldRequiredHint' => 'Field Required',
			'country' => 'Country',
			'selectYourCountry' => 'Select Your Country',
			'city' => 'City',
			'back' => 'back',
			'sms' => 'SMS',
			'showMore' => 'Show More',
			'address' => 'Address',
			'checkout' => 'Checkout',
			'toUploadFiles' => 'To Upload Files',
			'mb' => 'MB',
			'invalidFileType' => 'Invalid File Type',
			'isRequired' => 'is required',
			'edit' => 'Edit',
			'view' => 'View',
			'success' => 'Success',
			'invalidPhoneNumber' => 'Invalid Phone Number',
			'phoneRequired' => 'Phone Number is required',
			'phoneNumberHint' => 'Enter your phone number',
			'enterOldPasswordHint' => 'Enter your old password',
			'enterNewPasswordHint' => 'Enter your new password',
			'enterConfirmPasswordHint' => 'Enter your confirm password',
			'passwordRequired' => 'Password is required',
			'play' => 'Play',
			_ => null,
		};
	}
}
