
package Paws::Notifications::ListChannelsResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'channels', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListChannelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Channels => ArrayRef[Str|Undef]

A list of Channels.


=head2 NextToken => Str

A pagination token. If a non-null pagination token is returned in a
result, pass its value in another request to retrieve more entries.


=head2 _request_id => Str


=cut

