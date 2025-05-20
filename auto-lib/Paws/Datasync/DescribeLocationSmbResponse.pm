
package Paws::Datasync::DescribeLocationSmbResponse;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AuthenticationType => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DnsIpAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Domain => (is => 'ro', isa => 'Str');
  has KerberosPrincipal => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has MountOptions => (is => 'ro', isa => 'Paws::Datasync::SmbMountOptions');
  has User => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationSmbResponse

=head1 ATTRIBUTES


=head2 AgentArns => ArrayRef[Str|Undef]

The ARNs of the DataSync agents that can connect with your SMB file
server.


=head2 AuthenticationType => Str

The authentication protocol that DataSync uses to connect to your SMB
file server.

Valid values are: C<"NTLM">, C<"KERBEROS">
=head2 CreationTime => Str

The time that the SMB location was created.


=head2 DnsIpAddresses => ArrayRef[Str|Undef]

The IPv4 addresses for the DNS servers that your SMB file server
belongs to. This element applies only if C<AuthenticationType> is set
to C<KERBEROS>.


=head2 Domain => Str

The name of the Windows domain that the SMB file server belongs to.
This element applies only if C<AuthenticationType> is set to C<NTLM>.


=head2 KerberosPrincipal => Str

The Kerberos principal that has permission to access the files,
folders, and file metadata in your SMB file server.


=head2 LocationArn => Str

The ARN of the SMB location.


=head2 LocationUri => Str

The URI of the SMB location.


=head2 MountOptions => L<Paws::Datasync::SmbMountOptions>

The SMB protocol version that DataSync uses to access your SMB file
server.


=head2 User => Str

The user that can mount and access the files, folders, and file
metadata in your SMB file server. This element applies only if
C<AuthenticationType> is set to C<NTLM>.


=head2 _request_id => Str


=cut

1;