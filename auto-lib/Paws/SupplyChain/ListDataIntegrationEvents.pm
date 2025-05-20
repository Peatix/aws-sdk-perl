
package Paws::SupplyChain::ListDataIntegrationEvents;
  use Moose;
  has EventType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'eventType');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataIntegrationEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api-data/data-integration/instance/{instanceId}/data-integration-events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::ListDataIntegrationEventsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::ListDataIntegrationEvents - Arguments for method ListDataIntegrationEvents on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataIntegrationEvents on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method ListDataIntegrationEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataIntegrationEvents.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $ListDataIntegrationEventsResponse = $scn->ListDataIntegrationEvents(
      InstanceId => 'MyUUID',
      EventType  => 'scn.data.forecast',                  # OPTIONAL
      MaxResults => 1,                                    # OPTIONAL
      NextToken  => 'MyDataIntegrationEventNextToken',    # OPTIONAL
    );

    # Results:
    my $Events    = $ListDataIntegrationEventsResponse->Events;
    my $NextToken = $ListDataIntegrationEventsResponse->NextToken;

    # Returns a L<Paws::SupplyChain::ListDataIntegrationEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/ListDataIntegrationEvents>

=head1 ATTRIBUTES


=head2 EventType => Str

List data integration events for the specified eventType.

Valid values are: C<"scn.data.forecast">, C<"scn.data.inventorylevel">, C<"scn.data.inboundorder">, C<"scn.data.inboundorderline">, C<"scn.data.inboundorderlineschedule">, C<"scn.data.outboundorderline">, C<"scn.data.outboundshipment">, C<"scn.data.processheader">, C<"scn.data.processoperation">, C<"scn.data.processproduct">, C<"scn.data.reservation">, C<"scn.data.shipment">, C<"scn.data.shipmentstop">, C<"scn.data.shipmentstoporder">, C<"scn.data.supplyplan">, C<"scn.data.dataset">

=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Supply Chain instance identifier.



=head2 MaxResults => Int

Specify the maximum number of data integration events to fetch in one
paginated request.



=head2 NextToken => Str

The pagination token to fetch the next page of the data integration
events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataIntegrationEvents in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

