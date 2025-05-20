
package Paws::EC2::EnableSnapshotBlockPublicAccessResult;
  use Moose;
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableSnapshotBlockPublicAccessResult

=head1 ATTRIBUTES


=head2 State => Str

The state of block public access for snapshots for the account and
Region. Returns either C<block-all-sharing> or C<block-new-sharing> if
the request succeeds.

Valid values are: C<"block-all-sharing">, C<"block-new-sharing">, C<"unblocked">
=head2 _request_id => Str


=cut

