
package Paws::IoTTwinMaker::ListScenesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SceneSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::SceneSummary]', traits => ['NameInRequest'], request_name => 'sceneSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListScenesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 SceneSummaries => ArrayRef[L<Paws::IoTTwinMaker::SceneSummary>]

A list of objects that contain information about the scenes.


=head2 _request_id => Str


=cut

