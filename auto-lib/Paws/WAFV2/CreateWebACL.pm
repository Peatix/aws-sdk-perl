
package Paws::WAFV2::CreateWebACL;
  use Moose;
  has AssociationConfig => (is => 'ro', isa => 'Paws::WAFV2::AssociationConfig');
  has CaptchaConfig => (is => 'ro', isa => 'Paws::WAFV2::CaptchaConfig');
  has ChallengeConfig => (is => 'ro', isa => 'Paws::WAFV2::ChallengeConfig');
  has CustomResponseBodies => (is => 'ro', isa => 'Paws::WAFV2::CustomResponseBodies');
  has DataProtectionConfig => (is => 'ro', isa => 'Paws::WAFV2::DataProtectionConfig');
  has DefaultAction => (is => 'ro', isa => 'Paws::WAFV2::DefaultAction', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::Rule]');
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::Tag]');
  has TokenDomains => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VisibilityConfig => (is => 'ro', isa => 'Paws::WAFV2::VisibilityConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWebACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::CreateWebACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::CreateWebACL - Arguments for method CreateWebACL on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWebACL on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method CreateWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWebACL.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $CreateWebACLResponse = $wafv2->CreateWebACL(
      DefaultAction => {
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
            ResponseCode          => 1,    # min: 200, max: 599
            CustomResponseBodyKey =>
              'MyEntityName',              # min: 1, max: 128; OPTIONAL
            ResponseHeaders => [
              {
                Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

              },
              ...
            ],    # min: 1
          },    # OPTIONAL
        },    # OPTIONAL
      },
      Name             => 'MyEntityName',
      Scope            => 'CLOUDFRONT',
      VisibilityConfig => {
        CloudWatchMetricsEnabled => 1,
        MetricName               => 'MyMetricName',    # min: 1, max: 255
        SampledRequestsEnabled   => 1,

      },
      AssociationConfig => {
        RequestBody => {
          'CLOUDFRONT' => {
            DefaultSizeInspectionLimit =>
              'KB_16',    # values: KB_16, KB_32, KB_48, KB_64

          }, # key: values: CLOUDFRONT, API_GATEWAY, COGNITO_USER_POOL, APP_RUNNER_SERVICE, VERIFIED_ACCESS_INSTANCE
        },    # OPTIONAL
      },    # OPTIONAL
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
      CustomResponseBodies => {
        'MyEntityName' => {
          Content     => 'MyResponseContent',    # min: 1, max: 10240
          ContentType =>
            'TEXT_PLAIN',    # values: TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON

        },    # key: min: 1, max: 128; OPTIONAL
      },    # OPTIONAL
      DataProtectionConfig => {
        DataProtections => [
          {
            Action => 'SUBSTITUTION',    # values: SUBSTITUTION, HASH
            Field  => {
              FieldType => 'SINGLE_HEADER'
              , # values: SINGLE_HEADER, SINGLE_COOKIE, SINGLE_QUERY_ARGUMENT, QUERY_STRING, BODY
              FieldKeys => [
                'MyFieldToProtectKeyName', ...    # min: 1, max: 64
              ],    # max: 100; OPTIONAL
            },
            ExcludeRateBasedDetails => 1,
            ExcludeRuleMatchDetails => 1,
          },
          ...
        ],    # min: 1, max: 26

      },    # OPTIONAL
      Description => 'MyEntityDescription',    # OPTIONAL
      Rules       => [
        {
          Name      => 'MyEntityName',         # min: 1, max: 128; OPTIONAL
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
              Name          => 'MyEntityName',    # min: 1, max: 128; OPTIONAL
              VendorName    => 'MyVendorName',    # min: 1, max: 128
              ExcludedRules => [
                {
                  Name => 'MyEntityName',         # min: 1, max: 128; OPTIONAL

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
                          'MyEntityName',    # min: 1, max: 128; OPTIONAL
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
                  Name => 'MyEntityName',    # min: 1, max: 128; OPTIONAL

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
                  Name => 'MyEntityName',          # min: 1, max: 128; OPTIONAL

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
                          'MyEntityName',    # min: 1, max: 128; OPTIONAL
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
                  Name => 'MyEntityName',    # min: 1, max: 128; OPTIONAL

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
                ResponseCode          => 1,    # min: 200, max: 599
                CustomResponseBodyKey =>
                  'MyEntityName',              # min: 1, max: 128; OPTIONAL
                ResponseHeaders => [
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
          },
          ChallengeConfig => {
            ImmunityTimeProperty => {
              ImmunityTime => 1,    # min: 60, max: 259200

            },    # OPTIONAL
          },
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
      TokenDomains => [
        'MyTokenDomain', ...    # min: 1, max: 253
      ],    # OPTIONAL
    );

    # Results:
    my $Summary = $CreateWebACLResponse->Summary;

    # Returns a L<Paws::WAFV2::CreateWebACLResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/CreateWebACL>

=head1 ATTRIBUTES


=head2 AssociationConfig => L<Paws::WAFV2::AssociationConfig>

Specifies custom configurations for the associations between the web
ACL and protected resources.

Use this to customize the maximum size of the request body that your
protected resources forward to WAF for inspection. You can customize
this setting for CloudFront, API Gateway, Amazon Cognito, App Runner,
or Verified Access resources. The default setting is 16 KB (16,384
bytes).

You are charged additional fees when your protected resources forward
body sizes that are larger than the default. For more information, see
WAF Pricing (http://aws.amazon.com/waf/pricing/).

For Application Load Balancer and AppSync, the limit is fixed at 8 KB
(8,192 bytes).



=head2 CaptchaConfig => L<Paws::WAFV2::CaptchaConfig>

Specifies how WAF should handle C<CAPTCHA> evaluations for rules that
don't have their own C<CaptchaConfig> settings. If you don't specify
this, WAF uses its default settings for C<CaptchaConfig>.



=head2 ChallengeConfig => L<Paws::WAFV2::ChallengeConfig>

Specifies how WAF should handle challenge evaluations for rules that
don't have their own C<ChallengeConfig> settings. If you don't specify
this, WAF uses its default settings for C<ChallengeConfig>.



=head2 CustomResponseBodies => L<Paws::WAFV2::CustomResponseBodies>

A map of custom response keys and content bodies. When you create a
rule with a block action, you can send a custom response to the web
request. You define these for the web ACL, and then use them in the
rules and default actions that you define in the web ACL.

For information about customizing web requests and responses, see
Customizing web requests and responses in WAF
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html)
in the I<WAF Developer Guide>.

For information about the limits on count and size for custom request
and response settings, see WAF quotas
(https://docs.aws.amazon.com/waf/latest/developerguide/limits.html) in
the I<WAF Developer Guide>.



=head2 DataProtectionConfig => L<Paws::WAFV2::DataProtectionConfig>

Specifies data protection to apply to the web request data for the web
ACL. This is a web ACL level data protection option.

The data protection that you configure for the web ACL alters the data
that's available for any other data collection activity, including your
WAF logging destinations, web ACL request sampling, and Amazon Security
Lake data collection and management. Your other option for data
protection is in the logging configuration, which only affects logging.



=head2 B<REQUIRED> DefaultAction => L<Paws::WAFV2::DefaultAction>

The action to perform if none of the C<Rules> contained in the
C<WebACL> match.



=head2 Description => Str

A description of the web ACL that helps with identification.



=head2 B<REQUIRED> Name => Str

The name of the web ACL. You cannot change the name of a web ACL after
you create it.



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



=head2 TokenDomains => ArrayRef[Str|Undef]

Specifies the domains that WAF should accept in a web request token.
This enables the use of tokens across multiple protected websites. When
WAF provides a token, it uses the domain of the Amazon Web Services
resource that the web ACL is protecting. If you don't specify a list of
token domains, WAF accepts tokens only for the domain of the protected
resource. With a token domain list, WAF accepts the resource's host
domain plus all domains in the token domain list, including their
prefixed subdomains.

Example JSON: C<"TokenDomains": { "mywebsite.com", "myotherwebsite.com"
}>

Public suffixes aren't allowed. For example, you can't use C<gov.au> or
C<co.uk> as token domains.



=head2 B<REQUIRED> VisibilityConfig => L<Paws::WAFV2::VisibilityConfig>

Defines and enables Amazon CloudWatch metrics and web request sample
collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWebACL in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

