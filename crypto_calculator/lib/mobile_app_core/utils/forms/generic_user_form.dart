import 'package:crypto_calculator/mobile_app_core/constants/regex_pattern.dart';
import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

///Email Form
class EmailForm extends FormzInput<String, EmailValidationError> {
  const EmailForm.pure() : super.pure('');

  const EmailForm.dirty([String value = '']) : super.dirty(value);
  static final RegExp _emailRegExp = RegexPattern.email;

  @override
  EmailValidationError? validator(String? value) {
    return _emailRegExp.hasMatch(value ?? '')
        ? null
        : EmailValidationError.invalid;
  }
}

enum PasswordValidationError { invalid }

///Password Form
class PasswordForm extends FormzInput<String, PasswordValidationError> {
  const PasswordForm.pure() : super.pure('');

  const PasswordForm.dirty([String value = '']) : super.dirty(value);

  static final _passwordRegExp = RegexPattern.passwordAllowed;

  @override
  PasswordValidationError? validator(String? value) {
    return _passwordRegExp.hasMatch(value ?? '')
        ? null
        : PasswordValidationError.invalid;
  }
}

class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  /// {@macro confirmed_password}
  const ConfirmedPassword.pure({this.password = ''}) : super.pure('');

  /// {@macro confirmed_password}
  const ConfirmedPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  /// The original password.
  final String password;

  @override
  ConfirmedPasswordValidationError? validator(String? value) {
    return password == value ? null : ConfirmedPasswordValidationError.invalid;
  }
}

enum FirstNameValidationError { invalid }

///FirstName Form
class FirstNameForm extends FormzInput<String, FirstNameValidationError> {
  const FirstNameForm.pure() : super.pure('');

  const FirstNameForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nameRegExp = RegexPattern.name;

  @override
  FirstNameValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return FirstNameValidationError.invalid;
    }
    return _nameRegExp.hasMatch(value)
        ? null
        : FirstNameValidationError.invalid;
  }
}

///LastName Form
class LastNameForm extends FormzInput<String, FirstNameValidationError> {
  const LastNameForm.pure() : super.pure('');

  const LastNameForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nameRegExp = RegexPattern.lastName;

  @override
  FirstNameValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return FirstNameValidationError.invalid;
    }
    return _nameRegExp.hasMatch(value)
        ? null
        : FirstNameValidationError.invalid;
  }
}

///Other Form
enum OtherValidationError { invalid }

class OtherNameForm extends FormzInput<String, OtherValidationError> {
  const OtherNameForm.pure() : super.pure('');

  const OtherNameForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nameRegExp = RegexPattern.other;

  @override
  OtherValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return OtherValidationError.invalid;
    }
    return _nameRegExp.hasMatch(value) ? null : OtherValidationError.invalid;
  }
}

enum CheckboxValidationStatus { disabled }

///Checkbox Confirmation Form
class CheckboxConfirmationForm
    extends FormzInput<bool, CheckboxValidationStatus> {
  const CheckboxConfirmationForm.pure({this.checkboxValue = false})
      : super.pure(false);

  const CheckboxConfirmationForm.dirty({required this.checkboxValue})
      : super.dirty(checkboxValue);

  final bool checkboxValue;

  @override
  CheckboxValidationStatus? validator(bool value) {
    return value == true ? null : CheckboxValidationStatus.disabled;
  }
}

enum ConfirmedPasswordValidationError { invalid }

///Confirmed Password Form
class ConfirmedPasswordForm
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  const ConfirmedPasswordForm.pure({this.password = ''}) : super.pure('');

  const ConfirmedPasswordForm.dirty({required this.password, String value = ''})
      : super.dirty(value);

  final String password;

  @override
  ConfirmedPasswordValidationError? validator(String? value) {
    return password == value ? null : ConfirmedPasswordValidationError.invalid;
  }
}

///Username
class UserNameForm extends FormzInput<String, FirstNameValidationError> {
  const UserNameForm.pure() : super.pure('');

  const UserNameForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nameRegExp = RegexPattern.username;

  @override
  FirstNameValidationError? validator(String? value) {
    return _nameRegExp.hasMatch(value ?? '')
        ? null
        : FirstNameValidationError.invalid;
  }
}

// userDescription

enum UserDescriptionError { invalid }

class UserDescriptionForm extends FormzInput<String, UserDescriptionError> {
  const UserDescriptionForm.pure() : super.pure('');

  const UserDescriptionForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _linkRegex = RegexPattern.userDescription;

  @override
  UserDescriptionError? validator(String? value) {
    return _linkRegex.hasMatch(value ?? '')
        ? null
        : UserDescriptionError.invalid;
  }
}

//Birthdate
enum BirthdateValidationError { invalid }

class BirthDateForm extends FormzInput<int?, BirthdateValidationError> {
  const BirthDateForm.pure() : super.pure(null);

  const BirthDateForm.dirty([int value = 0]) : super.dirty(value);

  @override
  BirthdateValidationError? validator(int? value) {
    return value != null ? null : BirthdateValidationError.invalid;
  }
}

/* //Gender
enum GenderValidationError { invalid }

class GenderForm extends FormzInput<Gender?, GenderValidationError> {
  const GenderForm.pure() : super.pure(null);

  const GenderForm.dirty([Gender value = Gender.male]) : super.dirty(value);

  @override
  GenderValidationError? validator(Gender? value) {
    return value != null ? null : GenderValidationError.invalid;
  }
}
 */
enum DNIValidationError { invalid }

class DniForm extends FormzInput<String, DNIValidationError> {
  const DniForm.pure()
      : super.pure(
          '',
        );

  const DniForm.dirty([String value = '']) : super.dirty(value);

  @override
  DNIValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return null;
    if (value.length < 16) return null;
    return DNIValidationError.invalid;
  }
}

class NieForm extends FormzInput<String, DNIValidationError> {
  const NieForm.pure() : super.pure('');

  const NieForm.dirty([String value = '']) : super.dirty(value);

  @override
  DNIValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return null;
    if (value.length < 16) return null;
    return DNIValidationError.invalid;
  }
}

enum NationalityValidationError { invalid }

///Nationality
class NationalityForm extends FormzInput<String, NationalityValidationError> {
  const NationalityForm.pure() : super.pure('');

  const NationalityForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nameRegExp = RegexPattern.letters;

  @override
  NationalityValidationError? validator(String? value) {
    return _nameRegExp.hasMatch(value ?? '')
        ? null
        : NationalityValidationError.invalid;
  }
}

enum PostalCodeError { invalid }

/// Postal Code
class PostalCodeForm extends FormzInput<String, PostalCodeError> {
  const PostalCodeForm.pure() : super.pure('');

  const PostalCodeForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _postalCodeRegExp = RegexPattern.postalCode;

  @override
  PostalCodeError? validator(String? value) {
    return _postalCodeRegExp.hasMatch(value ?? '')
        ? null
        : PostalCodeError.invalid;
  }
}

enum PhoneNumberError { invalid }

/// Phone number
class PhoneNumberForm extends FormzInput<bool?, PhoneNumberError> {
  const PhoneNumberForm.pure() : super.pure(null);
  const PhoneNumberForm.dirty([
    bool value = true,
  ]) : super.dirty(value);

  @override
  PhoneNumberError? validator(bool? value) {
    if (value != null && !value) {
      return PhoneNumberError.invalid;
    }
    return null;
  }
}

class PhoneNumberFormWithOutLib
    extends FormzInput<String, PhoneNumberCodeError> {
  const PhoneNumberFormWithOutLib.pure() : super.pure('');

  const PhoneNumberFormWithOutLib.dirty([String value = ''])
      : super.dirty(value);

  static final RegExp _phoneRegex = RegexPattern.phone;

  @override
  PhoneNumberCodeError? validator(String? value) {
    return _phoneRegex.hasMatch(value ?? '')
        ? null
        : PhoneNumberCodeError.invalid;
  }
}

enum PhoneNumberCodeError { invalid }

/// Phone number
class PhoneCodeForm extends FormzInput<String, PhoneNumberCodeError> {
  const PhoneCodeForm.pure() : super.pure('');

  const PhoneCodeForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _phoneRegex = RegexPattern.verificationPhoneCode;

  @override
  PhoneNumberCodeError? validator(String? value) {
    return _phoneRegex.hasMatch(value ?? '')
        ? null
        : PhoneNumberCodeError.invalid;
  }
}

//endregion

enum RequiredStringError { invalid }

class RequiredStringForm extends FormzInput<String, RequiredStringError> {
  const RequiredStringForm.pure() : super.pure('');

  const RequiredStringForm.dirty([String value = '']) : super.dirty(value);

  @override
  RequiredStringError? validator(String? value) {
    return (value != null && value.trim().isNotEmpty)
        ? null
        : RequiredStringError.invalid;
  }
}

enum LinkError { invalid }

class FindingLinkForm extends FormzInput<String, LinkError> {
  const FindingLinkForm.pure() : super.pure('');

  const FindingLinkForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _linkRegex = RegexPattern.link;

  @override
  LinkError? validator(String? value) {
    return _linkRegex.hasMatch(value ?? '') ? null : LinkError.invalid;
  }
}

enum FindingPlaceError { invalid }

class FindingPlaceForm extends FormzInput<String, FindingPlaceError> {
  const FindingPlaceForm.pure() : super.pure('');

  const FindingPlaceForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _linkRegex = RegexPattern.findingPlace;

  @override
  FindingPlaceError? validator(String? value) {
    return _linkRegex.hasMatch(value ?? '') ? null : FindingPlaceError.invalid;
  }
}

enum FindingDetailsError { invalid }

class FindingDetailsForm extends FormzInput<String, FindingDetailsError> {
  const FindingDetailsForm.pure() : super.pure('');

  const FindingDetailsForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _linkRegex = RegexPattern.findingDetails;

  @override
  FindingDetailsError? validator(String? value) {
    return _linkRegex.hasMatch(value ?? '')
        ? null
        : FindingDetailsError.invalid;
  }
}

enum OtherBrandError { invalid }

class OtherBrandForm extends FormzInput<String, OtherBrandError> {
  const OtherBrandForm.pure() : super.pure('');

  const OtherBrandForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _linkRegex = RegexPattern.brand;

  @override
  OtherBrandError? validator(String? value) {
    return _linkRegex.hasMatch(value ?? '') ? null : OtherBrandError.invalid;
  }
}

enum FreeTextError { invalid }

class FreeTextForm extends FormzInput<String, FreeTextError> {
  const FreeTextForm.pure() : super.pure('');

  const FreeTextForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _linkRegex = RegexPattern.freeText;

  @override
  FreeTextError? validator(String? value) {
    return _linkRegex.hasMatch(value ?? '') ? null : FreeTextError.invalid;
  }
}
