#!/usr/bin/env coffee
LANG = [
  ["ENGLISH", "en", "eng", 0],
  ["DANISH", "da", "dan", 0],
  ["DUTCH", "nl", "dut", 0],
  ["FINNISH", "fi", "fin", 0],
  ["FRENCH", "fr", "fre", 0],
  ["GERMAN", "de", "ger", 0],
  ["HEBREW", "he", "heb", 0],
  ["ITALIAN", "it", "ita", 0],
  ["Japanese", "ja", "jpn", 0],
  ["Korean", "ko", "kor", 0],
  ["NORWEGIAN", "nb", "nor", 0],
  ["POLISH", "pl", "pol", 0],
  ["PORTUGUESE", "pt", "por", 0],
  ["RUSSIAN", "ru", "rus", 0],
  ["SPANISH", "es", "spa", 0],
  ["SWEDISH", "sv", "swe", 0],
  ["Chinese", "zh", "chi", "zh-CN"],
  ["CZECH", "cs", "cze", 0],
  ["GREEK", "el", "gre", 0],
  ["ICELANDIC", "is", "ice", 0],
  ["LATVIAN", "lv", "lav", 0],
  ["LITHUANIAN", "lt", "lit", 0],
  ["ROMANIAN", "ro", "rum", 0],
  ["HUNGARIAN", "hu", "hun", 0],
  ["ESTONIAN", "et", "est", 0],
  # TODO: Although Teragram has two output names "TG_UNKNOWN_LANGUAGE"
  # and "Unknown", they are essentially the same. Need to unify them.
  # "un" and "ut" are invented by us, not from ISO-639.
  #
  ["TG_UNKNOWN_LANGUAGE", 0, 0, "ut"],
  ["Unknown", 0, 0, "un"],
  ["BULGARIAN", "bg", "bul", 0],
  ["CROATIAN", "hr", "scr", 0],
  ["SERBIAN", "sr", "scc", 0],
  ["IRISH", "ga", "gle", 0],
  ["GALICIAN", "gl", "glg", 0],
  # Impossible to tell Tagalog from Filipino at the moment.
  # Use ISO 639-2 code for Filipino here.
  ["TAGALOG", 0, "fil", 0],
  ["TURKISH", "tr", "tur", 0],
  ["UKRAINIAN", "uk", "ukr", 0],
  ["HINDI", "hi", "hin", 0],
  ["MACEDONIAN", "mk", "mac", 0],
  ["BENGALI", "bn", "ben", 0],
  ["INDONESIAN", "id", "ind", 0],
  ["LATIN", "la", "lat", 0],
  ["MALAY", "ms", "may", 0],
  ["MALAYALAM", "ml", "mal", 0],
  ["WELSH", "cy", "wel", 0],
  ["NEPALI", "ne", "nep", 0],
  ["TELUGU", "te", "tel", 0],
  ["ALBANIAN", "sq", "alb", 0],
  ["TAMIL", "ta", "tam", 0],
  ["BELARUSIAN", "be", "bel", 0],
  ["JAVANESE", "jw", "jav", 0],
  ["OCCITAN", "oc", "oci", 0],
  ["URDU", "ur", "urd", 0],
  ["BIHARI", "bh", "bih", 0],
  ["GUJARATI", "gu", "guj", 0],
  ["THAI", "th", "tha", 0],
  ["ARABIC", "ar", "ara", 0],
  ["CATALAN", "ca", "cat", 0],
  ["ESPERANTO", "eo", "epo", 0],
  ["BASQUE", "eu", "baq", 0],
  ["INTERLINGUA", "ia", "ina", 0],
  ["KANNADA", "kn", "kan", 0],
  ["PUNJABI", "pa", "pan", 0],
  ["SCOTS_GAELIC", "gd", "gla", 0],
  ["SWAHILI", "sw", "swa", 0],
  ["SLOVENIAN", "sl", "slv", 0],
  ["MARATHI", "mr", "mar", 0],
  ["MALTESE", "mt", "mlt", 0],
  ["VIETNAMESE", "vi", "vie", 0],
  ["FRISIAN", "fy", "fry", 0],
  ["SLOVAK", "sk", "slo", 0],
  [
    "ChineseT",
    0,
    0, # We intentionally set these 2 fields to 0 to avoid
    # confusion between CHINESE_T and CHINESE.
    "zh-TW",
  ],
  ["FAROESE", "fo", "fao", 0],
  ["SUNDANESE", "su", "sun", 0],
  ["UZBEK", "uz", "uzb", 0],
  ["AMHARIC", "am", "amh", 0],
  ["AZERBAIJANI", "az", "aze", 0],
  ["GEORGIAN", "ka", "geo", 0],
  ["TIGRINYA", "ti", "tir", 0],
  ["PERSIAN", "fa", "per", 0],
  ["BOSNIAN", "bs", "bos", 0],
  ["SINHALESE", "si", "sin", 0],
  ["NORWEGIAN_N", "nn", "nno", 0],
  ["PORTUGUESE_P", 0, 0, "pt-PT"],
  ["PORTUGUESE_B", 0, 0, "pt-BR"],
  ["XHOSA", "xh", "xho", 0],
  ["ZULU", "zu", "zul", 0],
  ["GUARANI", "gn", "grn", 0],
  ["SESOTHO", "st", "sot", 0],
  ["TURKMEN", "tk", "tuk", 0],
  ["KYRGYZ", "ky", "kir", 0],
  ["BRETON", "br", "bre", 0],
  ["TWI", "tw", "twi", 0],
  ["YIDDISH", "yi", "yid", 0],
  ["SERBO_CROATIAN", "sh", 0, 0],
  ["SOMALI", "so", "som", 0],
  ["UIGHUR", "ug", "uig", 0],
  ["KURDISH", "ku", "kur", 0],
  ["MONGOLIAN", "mn", "mon", 0],
  ["ARMENIAN", "hy", "arm", 0],
  ["LAOTHIAN", "lo", "lao", 0],
  ["SINDHI", "sd", "snd", 0],
  ["RHAETO_ROMANCE", "rm", "roh", 0],
  ["AFRIKAANS", "af", "afr", 0],
  ["LUXEMBOURGISH", "lb", "ltz", 0],
  ["BURMESE", "my", "bur", 0],
  # KHMER is known as Cambodian for Google user interfaces.
  ["KHMER", "km", "khm", 0],
  ["TIBETAN", "bo", "tib", 0],
  ["DHIVEHI", "dv", "div", 0],
  ["CHEROKEE", 0, "chr", 0],
  ["SYRIAC", 0, "syr", 0],
  ["LIMBU", 0, 0, "sit-NP"],
  ["ORIYA", "or", "ori", 0],
  ["ASSAMESE", "as", "asm", 0],
  ["CORSICAN", "co", "cos", 0],
  ["INTERLINGUE", "ie", "ine", 0],
  ["KAZAKH", "kk", "kaz", 0],
  ["LINGALA", "ln", "lin", 0],
  ["MOLDAVIAN", "mo", "mol", 0],
  ["PASHTO", "ps", "pus", 0],
  ["QUECHUA", "qu", "que", 0],
  ["SHONA", "sn", "sna", 0],
  ["TAJIK", "tg", "tgk", 0],
  ["TATAR", "tt", "tat", 0],
  ["TONGA", "to", "tog", 0],
  ["YORUBA", "yo", "yor", 0],
  ["CREOLES_AND_PIDGINS_ENGLISH_BASED", 0, "cpe", 0],
  ["CREOLES_AND_PIDGINS_FRENCH_BASED", 0, "cpf", 0],
  ["CREOLES_AND_PIDGINS_PORTUGUESE_BASED", 0, "cpp", 0],
  ["CREOLES_AND_PIDGINS_OTHER", 0, "crp", 0],
  ["MAORI", "mi", "mao", 0],
  ["WOLOF", "wo", "wol", 0],
  ["ABKHAZIAN", "ab", "abk", 0],
  ["AFAR", "aa", "aar", 0],
  ["AYMARA", "ay", "aym", 0],
  ["BASHKIR", "ba", "bak", 0],
  ["BISLAMA", "bi", "bis", 0],
  ["DZONGKHA", "dz", "dzo", 0],
  ["FIJIAN", "fj", "fij", 0],
  ["GREENLANDIC", "kl", "kal", 0],
  ["HAUSA", "ha", "hau", 0],
  ["HAITIAN_CREOLE", "ht", 0, 0],
  ["INUPIAK", "ik", "ipk", 0],
  ["INUKTITUT", "iu", "iku", 0],
  ["KASHMIRI", "ks", "kas", 0],
  ["KINYARWANDA", "rw", "kin", 0],
  ["MALAGASY", "mg", "mlg", 0],
  ["NAURU", "na", "nau", 0],
  ["OROMO", "om", "orm", 0],
  ["RUNDI", "rn", "run", 0],
  ["SAMOAN", "sm", "smo", 0],
  ["SANGO", "sg", "sag", 0],
  ["SANSKRIT", "sa", "san", 0],
  ["SISWANT", "ss", "ssw", 0],
  ["TSONGA", "ts", "tso", 0],
  ["TSWANA", "tn", "tsn", 0],
  ["VOLAPUK", "vo", "vol", 0],
  ["ZHUANG", "za", "zha", 0],
  ["KHASI", 0, "kha", 0],
  ["SCOTS", 0, "sco", 0],
  ["GANDA", "lg", "lug", 0],
  ["MANX", "gv", "glv", 0],
  ["MONTENEGRIN", 0, 0, "sr-ME"],
  ["XX", 0, 0, "XX"],
]

for i from LANG
  console.log i[1] or i[3].split?('-')[0] or i[2]
