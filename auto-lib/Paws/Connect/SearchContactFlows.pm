
package Paws::Connect::SearchContactFlows;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SearchCriteria => (is => 'ro', isa => 'Paws::Connect::ContactFlowSearchCriteria');
  has SearchFilter => (is => 'ro', isa => 'Paws::Connect::ContactFlowSearchFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchContactFlows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-contact-flows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::SearchContactFlowsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchContactFlows - Arguments for method SearchContactFlows on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchContactFlows on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method SearchContactFlows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchContactFlows.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $SearchContactFlowsResponse = $connect->SearchContactFlows(
      InstanceId     => 'MyInstanceId',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken2500',    # OPTIONAL
      SearchCriteria => {
        AndConditions   => [ <ContactFlowSearchCriteria>, ... ],    # OPTIONAL
        OrConditions    => [ <ContactFlowSearchCriteria>, ... ],    # OPTIONAL
        StateCondition  => 'ACTIVE',       # values: ACTIVE, ARCHIVED; OPTIONAL
        StatusCondition => 'PUBLISHED',    # values: PUBLISHED, SAVED; OPTIONAL
        StringCondition => {
          ComparisonType =>
            'STARTS_WITH',    # values: STARTS_WITH, CONTAINS, EXACT; OPTIONAL
          FieldName => 'MyString',    # OPTIONAL
          Value     => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        TypeCondition => 'CONTACT_FLOW'
        , # values: CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER, CAMPAIGN; OPTIONAL
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
      $SearchContactFlowsResponse->ApproximateTotalCount;
    my $ContactFlows = $SearchContactFlowsResponse->ContactFlows;
    my $NextToken    = $SearchContactFlowsResponse->NextToken;

    # Returns a L<Paws::Connect::SearchContactFlowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/SearchContactFlows>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID in the Amazon Resource Name (ARN) of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 SearchCriteria => L<Paws::Connect::ContactFlowSearchCriteria>

The search criteria to be used to return flows.

The C<name> and C<description> fields support "contains" queries with a
minimum of 2 characters and a maximum of 25 characters. Any queries
with character lengths outside of this range will result in invalid
results.



=head2 SearchFilter => L<Paws::Connect::ContactFlowSearchFilter>

Filters to be applied to search results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchContactFlows in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

