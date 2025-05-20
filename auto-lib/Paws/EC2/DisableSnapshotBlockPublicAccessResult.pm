
package Paws::EC2::DisableSnapshotBlockPublicAccessResult;
  use Moose;
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableSnapshotBlockPublicAccessResult

=head1 ATTRIBUTES


=head2 State => Str

Returns C<unblocked> if the request succeeds.

Valid values are: C<"block-all-sharing">, C<"block-new-sharing">, C<"unblocked">
=head2 _request_id => Str


=cut

