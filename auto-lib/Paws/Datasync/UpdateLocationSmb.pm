
package Paws::Datasync::UpdateLocationSmb;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AuthenticationType => (is => 'ro', isa => 'Str');
  has DnsIpAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Domain => (is => 'ro', isa => 'Str');
  has KerberosKeytab => (is => 'ro', isa => 'Str');
  has KerberosKrb5Conf => (is => 'ro', isa => 'Str');
  has KerberosPrincipal => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has MountOptions => (is => 'ro', isa => 'Paws::Datasync::SmbMountOptions');
  has Password => (is => 'ro', isa => 'Str');
  has ServerHostname => (is => 'ro', isa => 'Str');
  has Subdirectory => (is => 'ro', isa => 'Str');
  has User => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationSmb');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationSmbResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationSmb - Arguments for method UpdateLocationSmb on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationSmb on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationSmb.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationSmb.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationSmbResponse = $datasync->UpdateLocationSmb(
      LocationArn => 'MyLocationArn',
      AgentArns   => [
        'MyAgentArn', ...    # max: 128
      ],    # OPTIONAL
      AuthenticationType => 'NTLM',    # OPTIONAL
      DnsIpAddresses     => [
        'MyServerIpAddress', ...       # min: 7, max: 15
      ],    # OPTIONAL
      Domain            => 'MySmbDomain',                 # OPTIONAL
      KerberosKeytab    => 'BlobKerberosKeytabFile',      # OPTIONAL
      KerberosKrb5Conf  => 'BlobKerberosKrb5ConfFile',    # OPTIONAL
      KerberosPrincipal => 'MyKerberosPrincipal',         # OPTIONAL
      MountOptions      => {
        Version =>
          'AUTOMATIC',   # values: AUTOMATIC, SMB2, SMB3, SMB1, SMB2_0; OPTIONAL
      },    # OPTIONAL
      Password       => 'MySmbPassword',        # OPTIONAL
      ServerHostname => 'MyServerHostname',     # OPTIONAL
      Subdirectory   => 'MySmbSubdirectory',    # OPTIONAL
      User           => 'MySmbUser',            # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationSmb>

=head1 ATTRIBUTES


=head2 AgentArns => ArrayRef[Str|Undef]

Specifies the DataSync agent (or agents) that can connect to your SMB
file server. You specify an agent by using its Amazon Resource Name
(ARN).



=head2 AuthenticationType => Str

Specifies the authentication protocol that DataSync uses to connect to
your SMB file server. DataSync supports C<NTLM> (default) and
C<KERBEROS> authentication.

For more information, see Providing DataSync access to SMB file servers
(https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions).

Valid values are: C<"NTLM">, C<"KERBEROS">

=head2 DnsIpAddresses => ArrayRef[Str|Undef]

Specifies the IPv4 addresses for the DNS servers that your SMB file
server belongs to. This parameter applies only if C<AuthenticationType>
is set to C<KERBEROS>.

If you have multiple domains in your environment, configuring this
parameter makes sure that DataSync connects to the right SMB file
server.



=head2 Domain => Str

Specifies the Windows domain name that your SMB file server belongs to.
This parameter applies only if C<AuthenticationType> is set to C<NTLM>.

If you have multiple domains in your environment, configuring this
parameter makes sure that DataSync connects to the right file server.



=head2 KerberosKeytab => Str

Specifies your Kerberos key table (keytab) file, which includes
mappings between your Kerberos principal and encryption keys.

The file must be base64 encoded. If you're using the CLI, the encoding
is done for you.

To avoid task execution errors, make sure that the Kerberos principal
that you use to create the keytab file matches exactly what you specify
for C<KerberosPrincipal>.



=head2 KerberosKrb5Conf => Str

Specifies a Kerberos configuration file (C<krb5.conf>) that defines
your Kerberos realm configuration.

The file must be base64 encoded. If you're using the CLI, the encoding
is done for you.



=head2 KerberosPrincipal => Str

Specifies a Kerberos prinicpal, which is an identity in your Kerberos
realm that has permission to access the files, folders, and file
metadata in your SMB file server.

A Kerberos principal might look like C<HOST/kerberosuser@MYDOMAIN.ORG>.

Principal names are case sensitive. Your DataSync task execution will
fail if the principal that you specify for this parameter
doesnE<rsquo>t exactly match the principal that you use to create the
keytab file.



=head2 B<REQUIRED> LocationArn => Str

Specifies the ARN of the SMB location that you want to update.



=head2 MountOptions => L<Paws::Datasync::SmbMountOptions>





=head2 Password => Str

Specifies the password of the user who can mount your SMB file server
and has permission to access the files and folders involved in your
transfer. This parameter applies only if C<AuthenticationType> is set
to C<NTLM>.



=head2 ServerHostname => Str

Specifies the domain name or IP address of the SMB file server that
your DataSync agent connects to.

Remember the following when configuring this parameter:

=over

=item *

You can't specify an IP version 6 (IPv6) address.

=item *

If you're using Kerberos authentication, you must specify a domain
name.

=back




=head2 Subdirectory => Str

Specifies the name of the share exported by your SMB file server where
DataSync will read or write data. You can include a subdirectory in the
share path (for example, C</path/to/subdirectory>). Make sure that
other SMB clients in your network can also mount this path.

To copy all data in the specified subdirectory, DataSync must be able
to mount the SMB share and access all of its data. For more
information, see Providing DataSync access to SMB file servers
(https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions).



=head2 User => Str

Specifies the user name that can mount your SMB file server and has
permission to access the files and folders involved in your transfer.
This parameter applies only if C<AuthenticationType> is set to C<NTLM>.

For information about choosing a user with the right level of access
for your transfer, see Providing DataSync access to SMB file servers
(https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationSmb in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

