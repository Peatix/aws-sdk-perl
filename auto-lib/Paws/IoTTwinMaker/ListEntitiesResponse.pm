
package Paws::IoTTwinMaker::ListEntitiesResponse;
  use Moose;
  has EntitySummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::EntitySummary]', traits => ['NameInRequest'], request_name => 'entitySummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListEntitiesResponse

=head1 ATTRIBUTES


=head2 EntitySummaries => ArrayRef[L<Paws::IoTTwinMaker::EntitySummary>]

A list of objects that contain information about the entities.


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 _request_id => Str


=cut

