
package Paws::WorkSpaces::CreateConnectClientAddInResult;
  use Moose;
  has AddInId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateConnectClientAddInResult

=head1 ATTRIBUTES


=head2 AddInId => Str

The client add-in identifier.


=head2 _request_id => Str


=cut

1;