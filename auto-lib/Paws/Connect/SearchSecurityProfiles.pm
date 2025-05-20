
package Paws::Connect::SearchSecurityProfiles;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SearchCriteria => (is => 'ro', isa => 'Paws::Connect::SecurityProfileSearchCriteria');
  has SearchFilter => (is => 'ro', isa => 'Paws::Connect::SecurityProfilesSearchFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchSecurityProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-security-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::SearchSecurityProfilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchSecurityProfiles - Arguments for method SearchSecurityProfiles on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchSecurityProfiles on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method SearchSecurityProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchSecurityProfiles.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $SearchSecurityProfilesResponse = $connect->SearchSecurityProfiles(
      InstanceId     => 'MyInstanceId',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken2500',    # OPTIONAL
      SearchCriteria => {
        AndConditions   => [ <SecurityProfileSearchCriteria>, ... ],  # OPTIONAL
        OrConditions    => [ <SecurityProfileSearchCriteria>, ... ],  # OPTIONAL
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
      $SearchSecurityProfilesResponse->ApproximateTotalCount;
    my $NextToken        = $SearchSecurityProfilesResponse->NextToken;
    my $SecurityProfiles = $SearchSecurityProfilesResponse->SecurityProfiles;

    # Returns a L<Paws::Connect::SearchSecurityProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/SearchSecurityProfiles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 SearchCriteria => L<Paws::Connect::SecurityProfileSearchCriteria>

The search criteria to be used to return security profiles.

The C<name> field support "contains" queries with a minimum of 2
characters and maximum of 25 characters. Any queries with character
lengths outside of this range will throw invalid results.

The currently supported value for C<FieldName>: C<name>



=head2 SearchFilter => L<Paws::Connect::SecurityProfilesSearchFilter>

Filters to be applied to search results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchSecurityProfiles in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

