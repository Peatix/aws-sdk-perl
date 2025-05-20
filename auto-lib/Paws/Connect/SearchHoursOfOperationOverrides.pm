
package Paws::Connect::SearchHoursOfOperationOverrides;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SearchCriteria => (is => 'ro', isa => 'Paws::Connect::HoursOfOperationOverrideSearchCriteria');
  has SearchFilter => (is => 'ro', isa => 'Paws::Connect::HoursOfOperationSearchFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchHoursOfOperationOverrides');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-hours-of-operation-overrides');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::SearchHoursOfOperationOverridesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchHoursOfOperationOverrides - Arguments for method SearchHoursOfOperationOverrides on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchHoursOfOperationOverrides on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method SearchHoursOfOperationOverrides.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchHoursOfOperationOverrides.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $SearchHoursOfOperationOverridesResponse =
      $connect->SearchHoursOfOperationOverrides(
      InstanceId     => 'MyInstanceId',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken2500',    # OPTIONAL
      SearchCriteria => {
        AndConditions => [ <HoursOfOperationOverrideSearchCriteria>, ... ]
        ,                                     # OPTIONAL
        DateCondition => {
          ComparisonType => 'GREATER_THAN'
          , # values: GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL_TO, LESS_THAN_OR_EQUAL_TO, EQUAL_TO; OPTIONAL
          FieldName => 'MyString',                    # OPTIONAL
          Value     => 'MyDateYearMonthDayFormat',    # OPTIONAL
        },    # OPTIONAL
        OrConditions => [ <HoursOfOperationOverrideSearchCriteria>, ... ]
        ,     # OPTIONAL
        StringCondition => {
          ComparisonType =>
            'STARTS_WITH',    # values: STARTS_WITH, CONTAINS, EXACT; OPTIONAL
          FieldName => 'MyString',    # OPTIONAL
          Value     => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SearchFilter => {
        TagFilter => {
          AndConditions => [
            {
              TagKey   => 'MyString',    # OPTIONAL
              TagValue => 'MyString',    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          OrConditions => [
            [
              {
                TagKey   => 'MyString',    # OPTIONAL
                TagValue => 'MyString',    # OPTIONAL
              },
              ...
            ],
            ...                            # OPTIONAL
          ],    # OPTIONAL
          TagCondition => {
            TagKey   => 'MyString',    # OPTIONAL
            TagValue => 'MyString',    # OPTIONAL
          },
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $ApproximateTotalCount =
      $SearchHoursOfOperationOverridesResponse->ApproximateTotalCount;
    my $HoursOfOperationOverrides =
      $SearchHoursOfOperationOverridesResponse->HoursOfOperationOverrides;
    my $NextToken = $SearchHoursOfOperationOverridesResponse->NextToken;

   # Returns a L<Paws::Connect::SearchHoursOfOperationOverridesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/SearchHoursOfOperationOverrides>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 MaxResults => Int

The maximum number of results to return per page. Valid Range: Minimum
value of 1. Maximum value of 100.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results. Length Constraints: Minimum length of 1. Maximum length of
2500.



=head2 SearchCriteria => L<Paws::Connect::HoursOfOperationOverrideSearchCriteria>

The search criteria to be used to return hours of operations overrides.



=head2 SearchFilter => L<Paws::Connect::HoursOfOperationSearchFilter>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchHoursOfOperationOverrides in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

