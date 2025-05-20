
package Paws::Wisdom::SearchSessions;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SearchExpression => (is => 'ro', isa => 'Paws::Wisdom::SearchExpression', traits => ['NameInRequest'], request_name => 'searchExpression', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchSessions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/searchSessions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::SearchSessionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::SearchSessions - Arguments for method SearchSessions on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchSessions on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method SearchSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchSessions.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $SearchSessionsResponse = $wisdom->SearchSessions(
      AssistantId      => 'MyUuidOrArn',
      SearchExpression => {
        Filters => [
          {
            Field    => 'NAME',                # values: NAME
            Operator => 'EQUALS',              # values: EQUALS
            Value    => 'MyNonEmptyString',    # min: 1, max: 4096

          },
          ...
        ],

      },
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $SearchSessionsResponse->NextToken;
    my $SessionSummaries = $SearchSessionsResponse->SessionSummaries;

    # Returns a L<Paws::Wisdom::SearchSessionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/SearchSessions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Wisdom assistant. Can be either the ID or the
ARN. URLs cannot contain the ARN.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> SearchExpression => L<Paws::Wisdom::SearchExpression>

The search expression to filter results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchSessions in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

