
package Paws::SupplyChain::SendDataIntegrationEvent;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Data => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'data', required => 1);
  has DatasetTarget => (is => 'ro', isa => 'Paws::SupplyChain::DataIntegrationEventDatasetTargetConfiguration', traits => ['NameInRequest'], request_name => 'datasetTarget');
  has EventGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventGroupId', required => 1);
  has EventTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTimestamp');
  has EventType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventType', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendDataIntegrationEvent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api-data/data-integration/instance/{instanceId}/data-integration-events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::SendDataIntegrationEventResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::SendDataIntegrationEvent - Arguments for method SendDataIntegrationEvent on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendDataIntegrationEvent on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method SendDataIntegrationEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendDataIntegrationEvent.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $SendDataIntegrationEventResponse = $scn->SendDataIntegrationEvent(
      Data          => 'MyDataIntegrationEventData',
      EventGroupId  => 'MyDataIntegrationEventGroupId',
      EventType     => 'scn.data.forecast',
      InstanceId    => 'MyUUID',
      ClientToken   => 'MyClientToken',                   # OPTIONAL
      DatasetTarget => {
        DatasetIdentifier => 'MyDataIntegrationDatasetArn', # min: 20, max: 1011
        OperationType     => 'APPEND',    # values: APPEND, UPSERT, DELETE

      },    # OPTIONAL
      EventTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $EventId = $SendDataIntegrationEventResponse->EventId;

    # Returns a L<Paws::SupplyChain::SendDataIntegrationEventResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/SendDataIntegrationEvent>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotent client token. The token is active for 8 hours, and
within its lifetime, it ensures the request completes only once upon
retry with same client token. If omitted, the AWS SDK generates a
unique value so that AWS SDK can safely retry the request upon network
errors.



=head2 B<REQUIRED> Data => Str

The data payload of the event, should follow the data schema of the
target dataset, or see Data entities supported in AWS Supply Chain
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html).
To send single data record, use JsonObject format; to send multiple
data records, use JsonArray format.

Note that for AWS Supply Chain dataset under B<asc> namespace, it has a
connection_id internal field that is not allowed to be provided by
client directly, they will be auto populated.



=head2 DatasetTarget => L<Paws::SupplyChain::DataIntegrationEventDatasetTargetConfiguration>

The target dataset configuration for B<scn.data.dataset> event type.



=head2 B<REQUIRED> EventGroupId => Str

Event identifier (for example, orderId for InboundOrder) used for data
sharding or partitioning. Noted under one eventGroupId of same
eventType and instanceId, events are processed sequentially in the
order they are received by the server.



=head2 EventTimestamp => Str

The timestamp (in epoch seconds) associated with the event. If not
provided, it will be assigned with current timestamp.



=head2 B<REQUIRED> EventType => Str

The data event type.

=over

=item *

B<scn.data.dataset> - Send data directly to any specified dataset.

=item *

B<scn.data.supplyplan> - Send data to supply_plan
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/supply-plan-entity.html)
dataset.

=item *

B<scn.data.shipmentstoporder> - Send data to shipment_stop_order
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-stop-order-entity.html)
dataset.

=item *

B<scn.data.shipmentstop> - Send data to shipment_stop
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-stop-entity.html)
dataset.

=item *

B<scn.data.shipment> - Send data to shipment
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-shipment-entity.html)
dataset.

=item *

B<scn.data.reservation> - Send data to reservation
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/planning-reservation-entity.html)
dataset.

=item *

B<scn.data.processproduct> - Send data to process_product
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-product-entity.html)
dataset.

=item *

B<scn.data.processoperation> - Send data to process_operation
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-operation-entity.html)
dataset.

=item *

B<scn.data.processheader> - Send data to process_header
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/operation-process-header-entity.html)
dataset.

=item *

B<scn.data.forecast> - Send data to forecast
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/forecast-forecast-entity.html)
dataset.

=item *

B<scn.data.inventorylevel> - Send data to inv_level
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/inventory_mgmnt-inv-level-entity.html)
dataset.

=item *

B<scn.data.inboundorder> - Send data to inbound_order
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-entity.html)
dataset.

=item *

B<scn.data.inboundorderline> - Send data to inbound_order_line
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-line-entity.html)
dataset.

=item *

B<scn.data.inboundorderlineschedule> - Send data to
inbound_order_line_schedule
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/replenishment-inbound-order-line-schedule-entity.html)
dataset.

=item *

B<scn.data.outboundorderline> - Send data to outbound_order_line
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/outbound-fulfillment-order-line-entity.html)
dataset.

=item *

B<scn.data.outboundshipment> - Send data to outbound_shipment
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/outbound-fulfillment-shipment-entity.html)
dataset.

=back


Valid values are: C<"scn.data.forecast">, C<"scn.data.inventorylevel">, C<"scn.data.inboundorder">, C<"scn.data.inboundorderline">, C<"scn.data.inboundorderlineschedule">, C<"scn.data.outboundorderline">, C<"scn.data.outboundshipment">, C<"scn.data.processheader">, C<"scn.data.processoperation">, C<"scn.data.processproduct">, C<"scn.data.reservation">, C<"scn.data.shipment">, C<"scn.data.shipmentstop">, C<"scn.data.shipmentstoporder">, C<"scn.data.supplyplan">, C<"scn.data.dataset">

=head2 B<REQUIRED> InstanceId => Str

The AWS Supply Chain instance identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendDataIntegrationEvent in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

