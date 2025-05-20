
package Paws::GroundStation::GetDataflowEndpointGroupResponse;
  use Moose;
  has ContactPostPassDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'contactPostPassDurationSeconds');
  has ContactPrePassDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'contactPrePassDurationSeconds');
  has DataflowEndpointGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataflowEndpointGroupArn');
  has DataflowEndpointGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataflowEndpointGroupId');
  has EndpointsDetails => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::EndpointDetails]', traits => ['NameInRequest'], request_name => 'endpointsDetails');
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetDataflowEndpointGroupResponse

=head1 ATTRIBUTES


=head2 ContactPostPassDurationSeconds => Int

Amount of time, in seconds, after a contact ends that the Ground
Station Dataflow Endpoint Group will be in a C<POSTPASS> state. A
Ground Station Dataflow Endpoint Group State Change event will be
emitted when the Dataflow Endpoint Group enters and exits the
C<POSTPASS> state.


=head2 ContactPrePassDurationSeconds => Int

Amount of time, in seconds, before a contact starts that the Ground
Station Dataflow Endpoint Group will be in a C<PREPASS> state. A Ground
Station Dataflow Endpoint Group State Change event will be emitted when
the Dataflow Endpoint Group enters and exits the C<PREPASS> state.


=head2 DataflowEndpointGroupArn => Str

ARN of a dataflow endpoint group.


=head2 DataflowEndpointGroupId => Str

UUID of a dataflow endpoint group.


=head2 EndpointsDetails => ArrayRef[L<Paws::GroundStation::EndpointDetails>]

Details of a dataflow endpoint.


=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags assigned to a dataflow endpoint group.


=head2 _request_id => Str


=cut

