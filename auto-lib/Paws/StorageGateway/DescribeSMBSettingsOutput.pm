
package Paws::StorageGateway::DescribeSMBSettingsOutput;
  use Moose;
  has ActiveDirectoryStatus => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has FileSharesVisible => (is => 'ro', isa => 'Bool');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has SMBGuestPasswordSet => (is => 'ro', isa => 'Bool');
  has SMBLocalGroups => (is => 'ro', isa => 'Paws::StorageGateway::SMBLocalGroups');
  has SMBSecurityStrategy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeSMBSettingsOutput

=head1 ATTRIBUTES


=head2 ActiveDirectoryStatus => Str

Indicates the status of a gateway that is a member of the Active
Directory domain.

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
=head2 DomainName => Str

The name of the domain that the gateway is joined to.


=head2 FileSharesVisible => Bool

The shares on this gateway appear when listing shares. Only supported
for S3 File Gateways.


=head2 GatewayARN => Str




=head2 SMBGuestPasswordSet => Bool

This value is C<true> if a password for the guest user C<smbguest> is
set, otherwise C<false>. Only supported for S3 File Gateways.

Valid Values: C<true> | C<false>


=head2 SMBLocalGroups => L<Paws::StorageGateway::SMBLocalGroups>

A list of Active Directory users and groups that have special
permissions for SMB file shares on the gateway.


=head2 SMBSecurityStrategy => Str

The type of security strategy that was specified for file gateway.

=over

=item *

C<ClientSpecified>: If you choose this option, requests are established
based on what is negotiated by the client. This option is recommended
when you want to maximize compatibility across different clients in
your environment. Supported only for S3 File Gateway.

=item *

C<MandatorySigning>: If you choose this option, File Gateway only
allows connections from SMBv2 or SMBv3 clients that have signing turned
on. This option works with SMB clients on Microsoft Windows Vista,
Windows Server 2008, or later.

=item *

C<MandatoryEncryption>: If you choose this option, File Gateway only
allows connections from SMBv3 clients that have encryption turned on.
Both 256-bit and 128-bit algorithms are allowed. This option is
recommended for environments that handle sensitive data. It works with
SMB clients on Microsoft Windows 8, Windows Server 2012, or later.

=item *

C<MandatoryEncryptionNoAes128>: If you choose this option, File Gateway
only allows connections from SMBv3 clients that use 256-bit AES
encryption algorithms. 128-bit algorithms are not allowed. This option
is recommended for environments that handle sensitive data. It works
with SMB clients on Microsoft Windows 8, Windows Server 2012, or later.

=back


Valid values are: C<"ClientSpecified">, C<"MandatorySigning">, C<"MandatoryEncryption">, C<"MandatoryEncryptionNoAes128">
=head2 _request_id => Str


=cut

1;