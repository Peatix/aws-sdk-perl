
package Paws::EC2::GetSnapshotBlockPublicAccessStateResult;
  use Moose;
  has ManagedBy => (is => 'ro', isa => 'Str', request_name => 'managedBy', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetSnapshotBlockPublicAccessStateResult

=head1 ATTRIBUTES


=head2 ManagedBy => Str

The entity that manages the state for block public access for
snapshots. Possible values include:

=over

=item *

C<account> - The state is managed by the account.

=item *

C<declarative-policy> - The state is managed by a declarative policy
and can't be modified by the account.

=back


Valid values are: C<"account">, C<"declarative-policy">
=head2 State => Str

The current state of block public access for snapshots. Possible values
include:

=over

=item *

C<block-all-sharing> - All public sharing of snapshots is blocked.
Users in the account can't request new public sharing. Additionally,
snapshots that were already publicly shared are treated as private and
are not publicly available.

=item *

C<block-new-sharing> - Only new public sharing of snapshots is blocked.
Users in the account can't request new public sharing. However,
snapshots that were already publicly shared, remain publicly available.

=item *

C<unblocked> - Public sharing is not blocked. Users can publicly share
snapshots.

=back


Valid values are: C<"block-all-sharing">, C<"block-new-sharing">, C<"unblocked">
=head2 _request_id => Str


=cut

