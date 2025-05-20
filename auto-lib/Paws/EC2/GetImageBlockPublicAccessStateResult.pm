
package Paws::EC2::GetImageBlockPublicAccessStateResult;
  use Moose;
  has ImageBlockPublicAccessState => (is => 'ro', isa => 'Str', request_name => 'imageBlockPublicAccessState', traits => ['NameInRequest',]);
  has ManagedBy => (is => 'ro', isa => 'Str', request_name => 'managedBy', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetImageBlockPublicAccessStateResult

=head1 ATTRIBUTES


=head2 ImageBlockPublicAccessState => Str

The current state of block public access for AMIs at the account level
in the specified Amazon Web Services Region.

Possible values:

=over

=item *

C<block-new-sharing> - Any attempt to publicly share your AMIs in the
specified Region is blocked.

=item *

C<unblocked> - Your AMIs in the specified Region can be publicly
shared.

=back



=head2 ManagedBy => Str

The entity that manages the state for block public access for AMIs.
Possible values include:

=over

=item *

C<account> - The state is managed by the account.

=item *

C<declarative-policy> - The state is managed by a declarative policy
and can't be modified by the account.

=back


Valid values are: C<"account">, C<"declarative-policy">
=head2 _request_id => Str


=cut

