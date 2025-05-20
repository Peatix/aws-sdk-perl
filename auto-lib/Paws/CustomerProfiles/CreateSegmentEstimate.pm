
package Paws::CustomerProfiles::CreateSegmentEstimate;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has SegmentQuery => (is => 'ro', isa => 'Paws::CustomerProfiles::SegmentGroupStructure', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSegmentEstimate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/segment-estimates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::CreateSegmentEstimateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateSegmentEstimate - Arguments for method CreateSegmentEstimate on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSegmentEstimate on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method CreateSegmentEstimate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSegmentEstimate.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $CreateSegmentEstimateResponse = $profile->CreateSegmentEstimate(
      DomainName   => 'Myname',
      SegmentQuery => {
        Groups => [
          {
            Dimensions => [
              {
                CalculatedAttributes => {
                  'MytypeName' => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH, BEFORE, AFTER, BETWEEN, NOT_BETWEEN, ON, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, EQUAL
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50
                    ConditionOverrides => {
                      Range => {
                        Start => 1,         # min: 1, max: 366
                        Unit  => 'DAYS',    # values: DAYS
                        End   => 1,         # max: 366; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                  },    # key: min: 1, max: 255
                },    # OPTIONAL
                ProfileAttributes => {
                  AccountNumber => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  AdditionalInformation => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To1000', ...    # min: 1, max: 1000
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  Address => {
                    City => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    Country => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    County => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    PostalCode => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    Province => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    State => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                  },    # OPTIONAL
                  Attributes => {
                    'MytypeName' => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH, BEFORE, AFTER, BETWEEN, NOT_BETWEEN, ON, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, EQUAL
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # key: min: 1, max: 255
                  },    # OPTIONAL
                  BillingAddress => {
                    City => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    Country => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    County => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    PostalCode => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    Province => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    State => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                  },    # OPTIONAL
                  BirthDate => {
                    DimensionType => 'BEFORE'
                    ,    # values: BEFORE, AFTER, BETWEEN, NOT_BETWEEN, ON
                    Values => [ 'MyString', ... ],    # min: 1, max: 50

                  },    # OPTIONAL
                  BusinessEmailAddress => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  BusinessName => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  BusinessPhoneNumber => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  EmailAddress => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  FirstName => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  GenderString => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  HomePhoneNumber => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  LastName => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  MailingAddress => {
                    City => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    Country => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    County => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    PostalCode => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    Province => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    State => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                  },    # OPTIONAL
                  MiddleName => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  MobilePhoneNumber => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  PartyTypeString => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  PersonalEmailAddress => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  PhoneNumber => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 50

                  },    # OPTIONAL
                  ShippingAddress => {
                    City => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    Country => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    County => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    PostalCode => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    Province => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                    State => {
                      DimensionType => 'INCLUSIVE'
                      , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH
                      Values => [
                        'Mystring1To255', ...    # min: 1, max: 255
                      ],    # min: 1, max: 50

                    },    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            SourceSegments => [
              {
                SegmentDefinitionName => 'Myname',    # min: 1, max: 64
              },
              ...
            ],    # OPTIONAL
            SourceType => 'ALL',    # values: ALL, ANY, NONE; OPTIONAL
            Type       => 'ALL',    # values: ALL, ANY, NONE; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Include => 'ALL',    # values: ALL, ANY, NONE; OPTIONAL
      },

    );

    # Results:
    my $DomainName = $CreateSegmentEstimateResponse->DomainName;
    my $EstimateId = $CreateSegmentEstimateResponse->EstimateId;
    my $StatusCode = $CreateSegmentEstimateResponse->StatusCode;

    # Returns a L<Paws::CustomerProfiles::CreateSegmentEstimateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/CreateSegmentEstimate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> SegmentQuery => L<Paws::CustomerProfiles::SegmentGroupStructure>

The segment query for calculating a segment estimate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSegmentEstimate in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

