
package Paws::WAFV2::CreateRuleGroup;
  use Moose;
  has Capacity => (is => 'ro', isa => 'Int', required => 1);
  has CustomResponseBodies => (is => 'ro', isa => 'Paws::WAFV2::CustomResponseBodies');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::Rule]');
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::Tag]');
  has VisibilityConfig => (is => 'ro', isa => 'Paws::WAFV2::VisibilityConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::CreateRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::CreateRuleGroup - Arguments for method CreateRuleGroup on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRuleGroup on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method CreateRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRuleGroup.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $CreateRuleGroupResponse = $wafv2->CreateRuleGroup(
      Capacity         => 1,
      Name             => 'MyEntityName',
      Scope            => 'CLOUDFRONT',
      VisibilityConfig => {
        CloudWatchMetricsEnabled => 1,
        MetricName               => 'MyMetricName',    # min: 1, max: 255
        SampledRequestsEnabled   => 1,

      },
      CustomResponseBodies => {
        'MyEntityName' => {
          Content     => 'MyResponseContent',    # min: 1, max: 10240
          ContentType =>
            'TEXT_PLAIN',    # values: TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON

        },    # key: min: 1, max: 128
      },    # OPTIONAL
      Description => 'MyEntityDescription',    # OPTIONAL
      Rules       => [
        {
          Name      => 'MyEntityName',         # min: 1, max: 128
          Priority  => 1,
          Statement => {
            AndStatement => {
              Statements => [ <Statement>, ... ],

            },                                 # OPTIONAL
            ByteMatchStatement => {
              FieldToMatch => {
                AllQueryArguments => {

                },    # OPTIONAL
                Body => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Cookies => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                HeaderOrder => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                Headers => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                JA3Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JA4Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JsonBody => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    IncludedPaths => [
                      'MyJsonPointerPath', ...    # min: 1, max: 512
                    ],    # min: 1; OPTIONAL
                  },
                  MatchScope              => 'ALL',    # values: ALL, KEY, VALUE
                  InvalidFallbackBehavior => 'MATCH'
                  ,    # values: MATCH, NO_MATCH, EVALUATE_AS_STRING; OPTIONAL
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriFragment => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              PositionalConstraint => 'EXACTLY'
              , # values: EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
              SearchString        => 'BlobSearchString',
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            GeoMatchStatement => {
              CountryCodes => [
                'AF',
                ... # values: AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW, XK
              ],    # min: 1; OPTIONAL
              ForwardedIPConfig => {
                FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                HeaderName => 'MyForwardedIPHeaderName',    # min: 1, max: 255

              },    # OPTIONAL
            },    # OPTIONAL
            IPSetReferenceStatement => {
              ARN                    => 'MyResourceArn',    # min: 20, max: 2048
              IPSetForwardedIPConfig => {
                FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                HeaderName => 'MyForwardedIPHeaderName',    # min: 1, max: 255
                Position   => 'FIRST',    # values: FIRST, LAST, ANY

              },    # OPTIONAL
            },    # OPTIONAL
            LabelMatchStatement => {
              Key   => 'MyLabelMatchKey',    # min: 1, max: 1024
              Scope => 'LABEL',              # values: LABEL, NAMESPACE

            },    # OPTIONAL
            ManagedRuleGroupStatement => {
              Name          => 'MyEntityName',    # min: 1, max: 128
              VendorName    => 'MyVendorName',    # min: 1, max: 128
              ExcludedRules => [
                {
                  Name => 'MyEntityName',         # min: 1, max: 128

                },
                ...
              ],    # max: 100; OPTIONAL
              ManagedRuleGroupConfigs => [
                {
                  AWSManagedRulesACFPRuleSet => {
                    CreationPath => 'MyCreationPathString',   # min: 1, max: 256
                    RegistrationPagePath =>
                      'MyRegistrationPagePathString',         # min: 1, max: 256
                    RequestInspection => {
                      PayloadType   => 'JSON',    # values: JSON, FORM_ENCODED
                      AddressFields => [
                        {
                          Identifier => 'MyFieldIdentifier',  # min: 1, max: 512

                        },
                        ...
                      ],    # OPTIONAL
                      EmailField => {
                        Identifier => 'MyFieldIdentifier',    # min: 1, max: 512

                      },    # OPTIONAL
                      PasswordField => {
                        Identifier => 'MyFieldIdentifier',    # min: 1, max: 512

                      },    # OPTIONAL
                      PhoneNumberFields => [
                        {
                          Identifier => 'MyFieldIdentifier',  # min: 1, max: 512

                        },
                        ...
                      ],    # OPTIONAL
                      UsernameField => {
                        Identifier => 'MyFieldIdentifier',    # min: 1, max: 512

                      },    # OPTIONAL
                    },
                    EnableRegexInPath  => 1,
                    ResponseInspection => {
                      BodyContains => {
                        FailureStrings => [
                          'MyFailureValue', ...    # min: 1, max: 100
                        ],    # min: 1, max: 5
                        SuccessStrings => [
                          'MySuccessValue', ...    # min: 1, max: 100
                        ],    # min: 1, max: 5

                      },    # OPTIONAL
                      Header => {
                        FailureValues => [
                          'MyFailureValue', ...    # min: 1, max: 100
                        ],    # min: 1, max: 3
                        Name =>
                          'MyResponseInspectionHeaderName',   # min: 1, max: 200
                        SuccessValues => [
                          'MySuccessValue', ...               # min: 1, max: 100
                        ],    # min: 1, max: 3

                      },    # OPTIONAL
                      Json => {
                        FailureValues => [
                          'MyFailureValue', ...    # min: 1, max: 100
                        ],    # min: 1, max: 5
                        Identifier    => 'MyFieldIdentifier', # min: 1, max: 512
                        SuccessValues => [
                          'MySuccessValue', ...               # min: 1, max: 100
                        ],    # min: 1, max: 5

                      },    # OPTIONAL
                      StatusCode => {
                        FailureCodes => [
                          1, ...    # max: 999
                        ],    # min: 1, max: 10
                        SuccessCodes => [
                          1, ...    # max: 999
                        ],    # min: 1, max: 10

                      },    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  AWSManagedRulesATPRuleSet => {
                    LoginPath         => 'MyString',
                    EnableRegexInPath => 1,
                    RequestInspection => {
                      PasswordField => {
                        Identifier => 'MyFieldIdentifier',    # min: 1, max: 512

                      },    # OPTIONAL
                      PayloadType   => 'JSON',    # values: JSON, FORM_ENCODED
                      UsernameField => {
                        Identifier => 'MyFieldIdentifier',    # min: 1, max: 512

                      },    # OPTIONAL

                    },    # OPTIONAL
                    ResponseInspection => {
                      BodyContains => {
                        FailureStrings => [
                          'MyFailureValue', ...    # min: 1, max: 100
                        ],    # min: 1, max: 5
                        SuccessStrings => [
                          'MySuccessValue', ...    # min: 1, max: 100
                        ],    # min: 1, max: 5

                      },    # OPTIONAL
                      Header => {
                        FailureValues => [
                          'MyFailureValue', ...    # min: 1, max: 100
                        ],    # min: 1, max: 3
                        Name =>
                          'MyResponseInspectionHeaderName',   # min: 1, max: 200
                        SuccessValues => [
                          'MySuccessValue', ...               # min: 1, max: 100
                        ],    # min: 1, max: 3

                      },    # OPTIONAL
                      Json => {
                        FailureValues => [
                          'MyFailureValue', ...    # min: 1, max: 100
                        ],    # min: 1, max: 5
                        Identifier    => 'MyFieldIdentifier', # min: 1, max: 512
                        SuccessValues => [
                          'MySuccessValue', ...               # min: 1, max: 100
                        ],    # min: 1, max: 5

                      },    # OPTIONAL
                      StatusCode => {
                        FailureCodes => [
                          1, ...    # max: 999
                        ],    # min: 1, max: 10
                        SuccessCodes => [
                          1, ...    # max: 999
                        ],    # min: 1, max: 10

                      },    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  AWSManagedRulesBotControlRuleSet => {
                    InspectionLevel => 'COMMON',    # values: COMMON, TARGETED
                    EnableMachineLearning => 1,     # OPTIONAL
                  },    # OPTIONAL
                  LoginPath => 'MyLoginPathString', # min: 1, max: 256; OPTIONAL
                  PasswordField => {
                    Identifier => 'MyFieldIdentifier',    # min: 1, max: 512

                  },    # OPTIONAL
                  PayloadType   => 'JSON',    # values: JSON, FORM_ENCODED
                  UsernameField => {
                    Identifier => 'MyFieldIdentifier',    # min: 1, max: 512

                  },    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
              RuleActionOverrides => [
                {
                  ActionToUse => {
                    Allow => {
                      CustomRequestHandling => {
                        InsertHeaders => [
                          {
                            Name  => 'MyCustomHTTPHeaderName', # min: 1, max: 64
                            Value =>
                              'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                          },
                          ...
                        ],    # min: 1

                      },    # OPTIONAL
                    },    # OPTIONAL
                    Block => {
                      CustomResponse => {
                        ResponseCode          => 1,    # min: 200, max: 599
                        CustomResponseBodyKey =>
                          'MyEntityName',              # min: 1, max: 128
                        ResponseHeaders => [
                          {
                            Name  => 'MyCustomHTTPHeaderName', # min: 1, max: 64
                            Value =>
                              'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                          },
                          ...
                        ],    # min: 1
                      },    # OPTIONAL
                    },    # OPTIONAL
                    Captcha => {
                      CustomRequestHandling => {
                        InsertHeaders => [
                          {
                            Name  => 'MyCustomHTTPHeaderName', # min: 1, max: 64
                            Value =>
                              'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                          },
                          ...
                        ],    # min: 1

                      },    # OPTIONAL
                    },    # OPTIONAL
                    Challenge => {
                      CustomRequestHandling => {
                        InsertHeaders => [
                          {
                            Name  => 'MyCustomHTTPHeaderName', # min: 1, max: 64
                            Value =>
                              'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                          },
                          ...
                        ],    # min: 1

                      },    # OPTIONAL
                    },    # OPTIONAL
                    Count => {
                      CustomRequestHandling => {
                        InsertHeaders => [
                          {
                            Name  => 'MyCustomHTTPHeaderName', # min: 1, max: 64
                            Value =>
                              'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                          },
                          ...
                        ],    # min: 1

                      },    # OPTIONAL
                    },    # OPTIONAL
                  },
                  Name => 'MyEntityName',    # min: 1, max: 128

                },
                ...
              ],    # max: 100; OPTIONAL
              ScopeDownStatement => <Statement>,
              Version => 'MyVersionKeyString',    # min: 1, max: 64; OPTIONAL
            },    # OPTIONAL
            NotStatement => {
              Statement => <Statement>,

            },    # OPTIONAL
            OrStatement => {
              Statements => [ <Statement>, ... ],

            },    # OPTIONAL
            RateBasedStatement => {
              AggregateKeyType =>
                'IP',    # values: IP, FORWARDED_IP, CUSTOM_KEYS, CONSTANT
              Limit      => 1,    # min: 10, max: 2000000000
              CustomKeys => [
                {
                  Cookie => {
                    Name => 'MyFieldToMatchData',    # min: 1, max: 64
                    TextTransformations => [
                      {
                        Priority => 1,
                        Type     => 'NONE'
                        , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                      },
                      ...
                    ],    # min: 1

                  },    # OPTIONAL
                  ForwardedIP => {

                  },    # OPTIONAL
                  HTTPMethod => {

                  },    # OPTIONAL
                  Header => {
                    Name => 'MyFieldToMatchData',    # min: 1, max: 64
                    TextTransformations => [
                      {
                        Priority => 1,
                        Type     => 'NONE'
                        , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                      },
                      ...
                    ],    # min: 1

                  },    # OPTIONAL
                  IP => {

                  },    # OPTIONAL
                  JA3Fingerprint => {
                    FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                  },    # OPTIONAL
                  JA4Fingerprint => {
                    FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                  },    # OPTIONAL
                  LabelNamespace => {
                    Namespace => 'MyLabelNamespace',    # min: 1, max: 1024

                  },    # OPTIONAL
                  QueryArgument => {
                    Name => 'MyFieldToMatchData',    # min: 1, max: 64
                    TextTransformations => [
                      {
                        Priority => 1,
                        Type     => 'NONE'
                        , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                      },
                      ...
                    ],    # min: 1

                  },    # OPTIONAL
                  QueryString => {
                    TextTransformations => [
                      {
                        Priority => 1,
                        Type     => 'NONE'
                        , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                      },
                      ...
                    ],    # min: 1

                  },    # OPTIONAL
                  UriPath => {
                    TextTransformations => [
                      {
                        Priority => 1,
                        Type     => 'NONE'
                        , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                      },
                      ...
                    ],    # min: 1

                  },    # OPTIONAL
                },
                ...
              ],    # max: 5; OPTIONAL
              EvaluationWindowSec => 1,    # OPTIONAL
              ForwardedIPConfig   => {
                FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                HeaderName => 'MyForwardedIPHeaderName',    # min: 1, max: 255

              },    # OPTIONAL
              ScopeDownStatement => <Statement>,
            },    # OPTIONAL
            RegexMatchStatement => {
              FieldToMatch => {
                AllQueryArguments => {

                },    # OPTIONAL
                Body => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Cookies => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                HeaderOrder => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                Headers => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                JA3Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JA4Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JsonBody => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    IncludedPaths => [
                      'MyJsonPointerPath', ...    # min: 1, max: 512
                    ],    # min: 1; OPTIONAL
                  },
                  MatchScope              => 'ALL',    # values: ALL, KEY, VALUE
                  InvalidFallbackBehavior => 'MATCH'
                  ,    # values: MATCH, NO_MATCH, EVALUATE_AS_STRING; OPTIONAL
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriFragment => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              RegexString         => 'MyRegexPatternString',  # min: 1, max: 512
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            RegexPatternSetReferenceStatement => {
              ARN          => 'MyResourceArn',    # min: 20, max: 2048
              FieldToMatch => {
                AllQueryArguments => {

                },                                # OPTIONAL
                Body => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Cookies => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                HeaderOrder => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                Headers => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                JA3Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JA4Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JsonBody => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    IncludedPaths => [
                      'MyJsonPointerPath', ...    # min: 1, max: 512
                    ],    # min: 1; OPTIONAL
                  },
                  MatchScope              => 'ALL',    # values: ALL, KEY, VALUE
                  InvalidFallbackBehavior => 'MATCH'
                  ,    # values: MATCH, NO_MATCH, EVALUATE_AS_STRING; OPTIONAL
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriFragment => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            RuleGroupReferenceStatement => {
              ARN           => 'MyResourceArn',    # min: 20, max: 2048
              ExcludedRules => [
                {
                  Name => 'MyEntityName',          # min: 1, max: 128

                },
                ...
              ],    # max: 100; OPTIONAL
              RuleActionOverrides => [
                {
                  ActionToUse => {
                    Allow => {
                      CustomRequestHandling => {
                        InsertHeaders => [
                          {
                            Name  => 'MyCustomHTTPHeaderName', # min: 1, max: 64
                            Value =>
                              'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                          },
                          ...
                        ],    # min: 1

                      },    # OPTIONAL
                    },    # OPTIONAL
                    Block => {
                      CustomResponse => {
                        ResponseCode          => 1,    # min: 200, max: 599
                        CustomResponseBodyKey =>
                          'MyEntityName',              # min: 1, max: 128
                        ResponseHeaders => [
                          {
                            Name  => 'MyCustomHTTPHeaderName', # min: 1, max: 64
                            Value =>
                              'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                          },
                          ...
                        ],    # min: 1
                      },    # OPTIONAL
                    },    # OPTIONAL
                    Captcha => {
                      CustomRequestHandling => {
                        InsertHeaders => [
                          {
                            Name  => 'MyCustomHTTPHeaderName', # min: 1, max: 64
                            Value =>
                              'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                          },
                          ...
                        ],    # min: 1

                      },    # OPTIONAL
                    },    # OPTIONAL
                    Challenge => {
                      CustomRequestHandling => {
                        InsertHeaders => [
                          {
                            Name  => 'MyCustomHTTPHeaderName', # min: 1, max: 64
                            Value =>
                              'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                          },
                          ...
                        ],    # min: 1

                      },    # OPTIONAL
                    },    # OPTIONAL
                    Count => {
                      CustomRequestHandling => {
                        InsertHeaders => [
                          {
                            Name  => 'MyCustomHTTPHeaderName', # min: 1, max: 64
                            Value =>
                              'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                          },
                          ...
                        ],    # min: 1

                      },    # OPTIONAL
                    },    # OPTIONAL
                  },
                  Name => 'MyEntityName',    # min: 1, max: 128

                },
                ...
              ],    # max: 100; OPTIONAL
            },    # OPTIONAL
            SizeConstraintStatement => {
              ComparisonOperator => 'EQ',    # values: EQ, NE, LE, LT, GE, GT
              FieldToMatch       => {
                AllQueryArguments => {

                },                           # OPTIONAL
                Body => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Cookies => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                HeaderOrder => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                Headers => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                JA3Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JA4Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JsonBody => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    IncludedPaths => [
                      'MyJsonPointerPath', ...    # min: 1, max: 512
                    ],    # min: 1; OPTIONAL
                  },
                  MatchScope              => 'ALL',    # values: ALL, KEY, VALUE
                  InvalidFallbackBehavior => 'MATCH'
                  ,    # values: MATCH, NO_MATCH, EVALUATE_AS_STRING; OPTIONAL
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriFragment => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              Size                => 1,    # max: 21474836480
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            SqliMatchStatement => {
              FieldToMatch => {
                AllQueryArguments => {

                },    # OPTIONAL
                Body => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Cookies => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                HeaderOrder => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                Headers => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                JA3Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JA4Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JsonBody => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    IncludedPaths => [
                      'MyJsonPointerPath', ...    # min: 1, max: 512
                    ],    # min: 1; OPTIONAL
                  },
                  MatchScope              => 'ALL',    # values: ALL, KEY, VALUE
                  InvalidFallbackBehavior => 'MATCH'
                  ,    # values: MATCH, NO_MATCH, EVALUATE_AS_STRING; OPTIONAL
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriFragment => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                },
                ...
              ],    # min: 1
              SensitivityLevel => 'LOW',    # values: LOW, HIGH; OPTIONAL
            },    # OPTIONAL
            XssMatchStatement => {
              FieldToMatch => {
                AllQueryArguments => {

                },    # OPTIONAL
                Body => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Cookies => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedCookies => [
                      'MySingleCookieName', ...    # min: 1, max: 60
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                HeaderOrder => {
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                Headers => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    ExcludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                    IncludedHeaders => [
                      'MyFieldToMatchData', ...    # min: 1, max: 64
                    ],    # min: 1, max: 199; OPTIONAL
                  },
                  MatchScope       => 'ALL',    # values: ALL, KEY, VALUE
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL

                },    # OPTIONAL
                JA3Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JA4Fingerprint => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH

                },    # OPTIONAL
                JsonBody => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    IncludedPaths => [
                      'MyJsonPointerPath', ...    # min: 1, max: 512
                    ],    # min: 1; OPTIONAL
                  },
                  MatchScope              => 'ALL',    # values: ALL, KEY, VALUE
                  InvalidFallbackBehavior => 'MATCH'
                  ,    # values: MATCH, NO_MATCH, EVALUATE_AS_STRING; OPTIONAL
                  OversizeHandling =>
                    'CONTINUE',    # values: CONTINUE, MATCH, NO_MATCH; OPTIONAL
                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriFragment => {
                  FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
          },
          VisibilityConfig => {
            CloudWatchMetricsEnabled => 1,
            MetricName               => 'MyMetricName',    # min: 1, max: 255
            SampledRequestsEnabled   => 1,

          },
          Action => {
            Allow => {
              CustomRequestHandling => {
                InsertHeaders => [
                  {
                    Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                    Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                  },
                  ...
                ],    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
            Block => {
              CustomResponse => {
                ResponseCode          => 1,                 # min: 200, max: 599
                CustomResponseBodyKey => 'MyEntityName',    # min: 1, max: 128
                ResponseHeaders       => [
                  {
                    Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                    Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                  },
                  ...
                ],    # min: 1
              },    # OPTIONAL
            },    # OPTIONAL
            Captcha => {
              CustomRequestHandling => {
                InsertHeaders => [
                  {
                    Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                    Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                  },
                  ...
                ],    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
            Challenge => {
              CustomRequestHandling => {
                InsertHeaders => [
                  {
                    Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                    Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                  },
                  ...
                ],    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
            Count => {
              CustomRequestHandling => {
                InsertHeaders => [
                  {
                    Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                    Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                  },
                  ...
                ],    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
          },
          CaptchaConfig => {
            ImmunityTimeProperty => {
              ImmunityTime => 1,    # min: 60, max: 259200

            },    # OPTIONAL
          },    # OPTIONAL
          ChallengeConfig => {
            ImmunityTimeProperty => {
              ImmunityTime => 1,    # min: 60, max: 259200

            },    # OPTIONAL
          },    # OPTIONAL
          OverrideAction => {
            Count => {
              CustomRequestHandling => {
                InsertHeaders => [
                  {
                    Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                    Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                  },
                  ...
                ],    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
            None => {

            },    # OPTIONAL
          },    # OPTIONAL
          RuleLabels => [
            {
              Name => 'MyLabelName',    # min: 1, max: 1024

            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Summary = $CreateRuleGroupResponse->Summary;

    # Returns a L<Paws::WAFV2::CreateRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/CreateRuleGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Capacity => Int

The web ACL capacity units (WCUs) required for this rule group.

When you create your own rule group, you define this, and you cannot
change it after creation. When you add or modify the rules in a rule
group, WAF enforces this limit. You can check the capacity for a set of
rules using CheckCapacity.

WAF uses WCUs to calculate and control the operating resources that are
used to run your rules, rule groups, and web ACLs. WAF calculates
capacity differently for each rule type, to reflect the relative cost
of each rule. Simple rules that cost little to run use fewer WCUs than
more complex rules that use more processing power. Rule group capacity
is fixed at creation, which helps users plan their web ACL WCU usage
when they use a rule group. For more information, see WAF web ACL
capacity units (WCU)
(https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html)
in the I<WAF Developer Guide>.



=head2 CustomResponseBodies => L<Paws::WAFV2::CustomResponseBodies>

A map of custom response keys and content bodies. When you create a
rule with a block action, you can send a custom response to the web
request. You define these for the rule group, and then use them in the
rules that you define in the rule group.

For information about customizing web requests and responses, see
Customizing web requests and responses in WAF
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html)
in the I<WAF Developer Guide>.

For information about the limits on count and size for custom request
and response settings, see WAF quotas
(https://docs.aws.amazon.com/waf/latest/developerguide/limits.html) in
the I<WAF Developer Guide>.



=head2 Description => Str

A description of the rule group that helps with identification.



=head2 B<REQUIRED> Name => Str

The name of the rule group. You cannot change the name of a rule group
after you create it.



=head2 Rules => ArrayRef[L<Paws::WAFV2::Rule>]

The Rule statements used to identify the web requests that you want to
manage. Each rule includes one top-level statement that WAF uses to
identify matching web requests, and parameters that govern how WAF
handles them.



=head2 B<REQUIRED> Scope => Str

Specifies whether this is for a global resource type, such as a Amazon
CloudFront distribution. For an Amplify application, use C<CLOUDFRONT>.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the Region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">

=head2 Tags => ArrayRef[L<Paws::WAFV2::Tag>]

An array of key:value pairs to associate with the resource.



=head2 B<REQUIRED> VisibilityConfig => L<Paws::WAFV2::VisibilityConfig>

Defines and enables Amazon CloudWatch metrics and web request sample
collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRuleGroup in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

