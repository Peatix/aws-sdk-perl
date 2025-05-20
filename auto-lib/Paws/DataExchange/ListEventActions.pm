
package Paws::DataExchange::ListEventActions;
  use Moose;
  has EventSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'eventSourceId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventActions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/event-actions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::ListEventActionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListEventActions - Arguments for method ListEventActions on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventActions on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method ListEventActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEventActions.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $ListEventActionsResponse = $dataexchange->ListEventActions(
      EventSourceId => 'My__string',    # OPTIONAL
      MaxResults    => 1,               # OPTIONAL
      NextToken     => 'My__string',    # OPTIONAL
    );

    # Results:
    my $EventActions = $ListEventActionsResponse->EventActions;
    my $NextToken    = $ListEventActionsResponse->NextToken;

    # Returns a L<Paws::DataExchange::ListEventActionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/ListEventActions>

=head1 ATTRIBUTES


=head2 EventSourceId => Str

The unique identifier for the event source.



=head2 MaxResults => Int

The maximum number of results returned by a single call.



=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEventActions in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

