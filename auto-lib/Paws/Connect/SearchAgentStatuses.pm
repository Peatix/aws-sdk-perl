
package Paws::Connect::SearchAgentStatuses;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SearchCriteria => (is => 'ro', isa => 'Paws::Connect::AgentStatusSearchCriteria');
  has SearchFilter => (is => 'ro', isa => 'Paws::Connect::AgentStatusSearchFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchAgentStatuses');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-agent-statuses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::SearchAgentStatusesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchAgentStatuses - Arguments for method SearchAgentStatuses on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchAgentStatuses on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method SearchAgentStatuses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchAgentStatuses.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $SearchAgentStatusesResponse = $connect->SearchAgentStatuses(
      InstanceId     => 'MyInstanceId',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken2500',    # OPTIONAL
      SearchCriteria => {
        AndConditions   => [ <AgentStatusSearchCriteria>, ... ],    # OPTIONAL
        OrConditions    => [ <AgentStatusSearchCriteria>, ... ],    # OPTIONAL
        StringCondition => {
          ComparisonType =>
            'STARTS_WITH',    # values: STARTS_WITH, CONTAINS, EXACT; OPTIONAL
          FieldName => 'MyString',    # OPTIONAL
          Value     => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SearchFilter => {
        AttributeFilter => {
          AndCondition => {
            TagConditions => [
              {
                TagKey   => 'MyString',    # OPTIONAL
                TagValue => 'MyString',    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          OrConditions => [
            {
              TagConditions => [
                {
                  TagKey   => 'MyString',    # OPTIONAL
                  TagValue => 'MyString',    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },
            ...     # OPTIONAL
          ],    # OPTIONAL
          TagCondition => {
            TagKey   => 'MyString',    # OPTIONAL
            TagValue => 'MyString',    # OPTIONAL
          },
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AgentStatuses = $SearchAgentStatusesResponse->AgentStatuses;
    my $ApproximateTotalCount =
      $SearchAgentStatusesResponse->ApproximateTotalCount;
    my $NextToken = $SearchAgentStatusesResponse->NextToken;

    # Returns a L<Paws::Connect::SearchAgentStatusesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/SearchAgentStatuses>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 SearchCriteria => L<Paws::Connect::AgentStatusSearchCriteria>

The search criteria to be used to return agent statuses.



=head2 SearchFilter => L<Paws::Connect::AgentStatusSearchFilter>

Filters to be applied to search results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchAgentStatuses in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

