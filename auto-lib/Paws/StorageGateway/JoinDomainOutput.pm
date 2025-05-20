
package Paws::StorageGateway::JoinDomainOutput;
  use Moose;
  has ActiveDirectoryStatus => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::JoinDomainOutput

=head1 ATTRIBUTES


=head2 ActiveDirectoryStatus => Str

Indicates the status of the gateway as a member of the Active Directory
domain.

This field is only used as part of a C<JoinDomain> request. It is not
affected by Active Directory connectivity changes that occur after the
C<JoinDomain> request succeeds.

=over

=item *

C<ACCESS_DENIED>: Indicates that the C<JoinDomain> operation failed due
to an authentication error.

=item *

C<DETACHED>: Indicates that gateway is not joined to a domain.

=item *

C<JOINED>: Indicates that the gateway has successfully joined a domain.

=item *

C<JOINING>: Indicates that a C<JoinDomain> operation is in progress.

=item *

C<INSUFFICIENT_PERMISSIONS>: Indicates that the C<JoinDomain> operation
failed because the specified user lacks the necessary permissions to
join the domain.

=item *

C<NETWORK_ERROR>: Indicates that C<JoinDomain> operation failed due to
a network or connectivity error.

=item *

C<TIMEOUT>: Indicates that the C<JoinDomain> operation failed because
the operation didn't complete within the allotted time.

=item *

C<UNKNOWN_ERROR>: Indicates that the C<JoinDomain> operation failed due
to another type of error.

=back


Valid values are: C<"ACCESS_DENIED">, C<"DETACHED">, C<"JOINED">, C<"JOINING">, C<"NETWORK_ERROR">, C<"TIMEOUT">, C<"UNKNOWN_ERROR">, C<"INSUFFICIENT_PERMISSIONS">
=head2 GatewayARN => Str

The unique Amazon Resource Name (ARN) of the gateway that joined the
domain.


=head2 _request_id => Str


=cut

1;