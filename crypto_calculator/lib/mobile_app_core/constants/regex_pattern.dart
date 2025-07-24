class RegexPattern {
  static final RegExp numbers = RegExp(
    r'^[0-9_-]*$',
  );

  static final RegExp letters = RegExp(
    r'^[a-zA-Z]*$',
    unicode: true,
    caseSensitive: false,
  );
  static final RegExp lettersWithSpace = RegExp(
    r'^([A-Z][a-z]+){1}( [A-Z][a-z]+)*$',
    unicode: true,
    caseSensitive: false,
  );

  static final RegExp name = RegExp(
    r'^(?=.{1,50}$)[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$',
    unicode: true,
    caseSensitive: false,
  );
  static final RegExp lastName = RegExp(
    r'^(?=.{1,50}$)[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$',
    unicode: true,
    caseSensitive: false,
  );

  static final RegExp other = RegExp(
    r'^[a-zA-ZÀ-ÿ\u00f1\u00d1\s\/-]+$',
    unicode: true,
    caseSensitive: false,
  );

  // static final RegExp email = RegExp(
  //   r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  // );

  static final RegExp lettersSpacesAndNumbers = RegExp(
    r'^[\p{L}0-9 ]*[\p{L}0-9][\p{L}0-9 ]*$',
    unicode: true,
  );

  static final RegExp username = RegExp(
    r'^(?=.{4,20}$)(?!.*[_.]{2})[a-zA-Z0-9._]+$',
    unicode: true,
  );

  static final RegExp alias = RegExp(
    r'^(?=.{2,50}$)[\p{L}0-9 ]*[\p{L}0-9][\p{L}0-9 ]*$',
    unicode: true,
  );

  static final RegExp email = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    unicode: true,
    caseSensitive: true,
  );

  static final RegExp passwordAllowed = RegExp(
    /* r'^((?=\S*?[A-Z])(?=\S*?[a-z])(?=\S*?[0-9]).{7,16})\S$' */
    r"^(?=.*[A-Z])(?=.*[\W_]).{8,}$",
    unicode: true,
    caseSensitive: true,
  );

  static final RegExp lettersSpacesNumbersAndHyphens = RegExp(
    r'^[\p{L}0-9 _-]*[\p{L}0-9][\p{L}0-9 _-]*$',
    unicode: true,
    caseSensitive: true,
  );

  static final RegExp nif = RegExp(
    r'^[0-9]{8}[TRWAGMYFPDXBNJZSQVHLCKET]$',
  );

  static final RegExp nie = RegExp(
    r'^[XYZ][0-9]{7}[TRWAGMYFPDXBNJZSQVHLCKET]$',
  );

  static final RegExp phone = RegExp(
    r'^(?:\+|00)?\d{7,15}$',
  );

  static final RegExp verificationPhoneCode = RegExp(
    r'(^[0-9]{4}$)',
  );

  static final RegExp postalCode = RegExp(
    r'^[a-zA-Z0-9]{4,20}$',
  );

  static final RegExp link = RegExp(
    r'^[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)',
  );
  static final RegExp findingPlace = RegExp(
    r'^[a-zA-Z0-9À-ÿñÑ ]{4,48}$',
    unicode: true,
  );

  static final RegExp findingDetails = RegExp(
    r'^[a-zA-Z0-9À-ÿñÑ \s]{4,512}$',
    unicode: true,
  );

  static final RegExp brand = RegExp(
    r'^[a-zA-Z0-9\s-]{2,512}$',
    unicode: true,
  );
  static final RegExp freeText = RegExp(
    r'^[a-zA-Z0-9]{2,512}$',
    unicode: true,
  );

  static final RegExp year = RegExp(
    r'^[0-9]{4,4}$',
  );

  static final RegExp model = RegExp(
    r'^(?=.{2,512}$)(?!.*[_.]{2})[a-zA-Z0-9._]+$',
    unicode: true,
  );

  static final RegExp material = RegExp(
    r'^[a-zA-Z0-9]{4,512}$',
    unicode: true,
  );

  static final RegExp groupName = RegExp(
    r'^[a-zA-Z0-9À-ÿñÑ \s]{4,22}$',
    unicode: true,
  );

  static final RegExp groupDescription = RegExp(
    r'^.[\s\S]{4,149}$',
    unicode: true,
  );
  static final RegExp userDescription = RegExp(
    r'^[\s\S]{0,150}$',
    unicode: true,
  );

  static final RegExp linkSearch = RegExp(
    r'\b((http|https|ftp):\/\/[-A-Z0-9+&@#/%?=~_|!:,.;]*\.[A-Z]{2,})',
    caseSensitive: false,
  );

  static final RegExp postContent = RegExp(r'^[\s\S]{1,2200}$');

  static final RegExp commentContent = RegExp(r'^[\s\S]{1,512}$');

  static final RegExp spanSearch = RegExp(
    '<span>(.*?)</span>|<a>(.*?)</a>',
  );
}
