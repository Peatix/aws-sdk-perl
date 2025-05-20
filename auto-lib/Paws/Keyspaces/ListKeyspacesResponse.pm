
package Paws::Keyspaces::ListKeyspacesResponse;
  use Moose;
  has Keyspaces => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::KeyspaceSummary]', traits => ['NameInRequest'], request_name => 'keyspaces' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::ListKeyspacesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Keyspaces => ArrayRef[L<Paws::Keyspaces::KeyspaceSummary>]

A list of keyspaces.


=head2 NextToken => Str

A token to specify where to start paginating. This is the C<NextToken>
from a previously truncated response.


=head2 _request_id => Str


=cut

1;