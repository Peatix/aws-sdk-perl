
package Paws::CustomerProfiles::CreateEventStreamResponse;
  use Moose;
  has EventStreamArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateEventStreamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventStreamArn => Str

A unique identifier for the event stream.


=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut

