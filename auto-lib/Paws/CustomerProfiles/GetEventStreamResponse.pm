
package Paws::CustomerProfiles::GetEventStreamResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has DestinationDetails => (is => 'ro', isa => 'Paws::CustomerProfiles::EventStreamDestinationDetails', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has EventStreamArn => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);
  has StoppedSince => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetEventStreamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the export was created.


=head2 B<REQUIRED> DestinationDetails => L<Paws::CustomerProfiles::EventStreamDestinationDetails>

Details regarding the Kinesis stream.


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.


=head2 B<REQUIRED> EventStreamArn => Str

A unique identifier for the event stream.


=head2 B<REQUIRED> State => Str

The operational state of destination stream for export.

Valid values are: C<"RUNNING">, C<"STOPPED">
=head2 StoppedSince => Str

The timestamp when the C<State> changed to C<STOPPED>.


=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut

