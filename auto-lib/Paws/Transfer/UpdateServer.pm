
package Paws::Transfer::UpdateServer;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str');
  has EndpointDetails => (is => 'ro', isa => 'Paws::Transfer::EndpointDetails');
  has EndpointType => (is => 'ro', isa => 'Str');
  has HostKey => (is => 'ro', isa => 'Str');
  has IdentityProviderDetails => (is => 'ro', isa => 'Paws::Transfer::IdentityProviderDetails');
  has LoggingRole => (is => 'ro', isa => 'Str');
  has PostAuthenticationLoginBanner => (is => 'ro', isa => 'Str');
  has PreAuthenticationLoginBanner => (is => 'ro', isa => 'Str');
  has ProtocolDetails => (is => 'ro', isa => 'Paws::Transfer::ProtocolDetails');
  has Protocols => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has S3StorageOptions => (is => 'ro', isa => 'Paws::Transfer::S3StorageOptions');
  has SecurityPolicyName => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has StructuredLogDestinations => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WorkflowDetails => (is => 'ro', isa => 'Paws::Transfer::WorkflowDetails');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::UpdateServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateServer - Arguments for method UpdateServer on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServer on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method UpdateServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServer.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $UpdateServerResponse = $transfer->UpdateServer(
      ServerId        => 'MyServerId',
      Certificate     => 'MyCertificate',    # OPTIONAL
      EndpointDetails => {
        AddressAllocationIds => [ 'MyAddressAllocationId', ... ],    # OPTIONAL
        SecurityGroupIds     => [
          'MySecurityGroupId', ...    # min: 11, max: 20
        ],    # OPTIONAL
        SubnetIds     => [ 'MySubnetId', ... ],    # OPTIONAL
        VpcEndpointId => 'MyVpcEndpointId',        # min: 22, max: 22; OPTIONAL
        VpcId         => 'MyVpcId',                # OPTIONAL
      },    # OPTIONAL
      EndpointType            => 'PUBLIC',       # OPTIONAL
      HostKey                 => 'MyHostKey',    # OPTIONAL
      IdentityProviderDetails => {
        DirectoryId    => 'MyDirectoryId',       # min: 12, max: 12; OPTIONAL
        Function       => 'MyFunction',          # min: 1, max: 170; OPTIONAL
        InvocationRole => 'MyRole',              # min: 20, max: 2048; OPTIONAL
        SftpAuthenticationMethods => 'PASSWORD'
        , # values: PASSWORD, PUBLIC_KEY, PUBLIC_KEY_OR_PASSWORD, PUBLIC_KEY_AND_PASSWORD; OPTIONAL
        Url => 'MyUrl',    # max: 255; OPTIONAL
      },    # OPTIONAL
      LoggingRole                   => 'MyNullableRole',    # OPTIONAL
      PostAuthenticationLoginBanner =>
        'MyPostAuthenticationLoginBanner',                  # OPTIONAL
      PreAuthenticationLoginBanner =>
        'MyPreAuthenticationLoginBanner',                   # OPTIONAL
      ProtocolDetails => {
        As2Transports => [
          'HTTP', ...                                       # values: HTTP
        ],    # min: 1, max: 1; OPTIONAL
        PassiveIp     => 'MyPassiveIp',    # max: 15; OPTIONAL
        SetStatOption => 'DEFAULT',    # values: DEFAULT, ENABLE_NO_OP; OPTIONAL
        TlsSessionResumptionMode =>
          'DISABLED',    # values: DISABLED, ENABLED, ENFORCED; OPTIONAL
      },    # OPTIONAL
      Protocols => [
        'SFTP', ...    # values: SFTP, FTP, FTPS, AS2
      ],    # OPTIONAL
      S3StorageOptions => {
        DirectoryListingOptimization =>
          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      SecurityPolicyName        => 'MySecurityPolicyName',    # OPTIONAL
      StructuredLogDestinations => [
        'MyArn', ...    # min: 20, max: 1600
      ],    # OPTIONAL
      WorkflowDetails => {
        OnPartialUpload => [
          {
            ExecutionRole => 'MyRole',          # min: 20, max: 2048; OPTIONAL
            WorkflowId    => 'MyWorkflowId',    # min: 19, max: 19

          },
          ...
        ],    # max: 1; OPTIONAL
        OnUpload => [
          {
            ExecutionRole => 'MyRole',          # min: 20, max: 2048; OPTIONAL
            WorkflowId    => 'MyWorkflowId',    # min: 19, max: 19

          },
          ...
        ],    # max: 1; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ServerId = $UpdateServerResponse->ServerId;

    # Returns a L<Paws::Transfer::UpdateServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/UpdateServer>

=head1 ATTRIBUTES


=head2 Certificate => Str

The Amazon Resource Name (ARN) of the Amazon Web ServicesCertificate
Manager (ACM) certificate. Required when C<Protocols> is set to
C<FTPS>.

To request a new public certificate, see Request a public certificate
(https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html)
in the I< Amazon Web ServicesCertificate Manager User Guide>.

To import an existing certificate into ACM, see Importing certificates
into ACM
(https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html)
in the I< Amazon Web ServicesCertificate Manager User Guide>.

To request a private certificate to use FTPS through private IP
addresses, see Request a private certificate
(https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html)
in the I< Amazon Web ServicesCertificate Manager User Guide>.

Certificates with the following cryptographic algorithms and key sizes
are supported:

=over

=item *

2048-bit RSA (RSA_2048)

=item *

4096-bit RSA (RSA_4096)

=item *

Elliptic Prime Curve 256 bit (EC_prime256v1)

=item *

Elliptic Prime Curve 384 bit (EC_secp384r1)

=item *

Elliptic Prime Curve 521 bit (EC_secp521r1)

=back

The certificate must be a valid SSL/TLS X.509 version 3 certificate
with FQDN or IP address specified and information about the issuer.



=head2 EndpointDetails => L<Paws::Transfer::EndpointDetails>

The virtual private cloud (VPC) endpoint settings that are configured
for your server. When you host your endpoint within your VPC, you can
make your endpoint accessible only to resources within your VPC, or you
can attach Elastic IP addresses and make your endpoint accessible to
clients over the internet. Your VPC's default security groups are
automatically assigned to your endpoint.



=head2 EndpointType => Str

The type of endpoint that you want your server to use. You can choose
to make your server's endpoint publicly accessible (PUBLIC) or host it
inside your VPC. With an endpoint that is hosted in a VPC, you can
restrict access to your server and resources only within your VPC or
choose to make it internet facing by attaching Elastic IP addresses
directly to it.

After May 19, 2021, you won't be able to create a server using
C<EndpointType=VPC_ENDPOINT> in your Amazon Web Services account if
your account hasn't already done so before May 19, 2021. If you have
already created servers with C<EndpointType=VPC_ENDPOINT> in your
Amazon Web Services account on or before May 19, 2021, you will not be
affected. After this date, use C<EndpointType>=C<VPC>.

For more information, see
https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.

It is recommended that you use C<VPC> as the C<EndpointType>. With this
endpoint type, you have the option to directly associate up to three
Elastic IPv4 addresses (BYO IP included) with your server's endpoint
and use VPC security groups to restrict traffic by the client's public
IP address. This is not possible with C<EndpointType> set to
C<VPC_ENDPOINT>.

Valid values are: C<"PUBLIC">, C<"VPC">, C<"VPC_ENDPOINT">

=head2 HostKey => Str

The RSA, ECDSA, or ED25519 private key to use for your SFTP-enabled
server. You can add multiple host keys, in case you want to rotate
keys, or have a set of active keys that use different algorithms.

Use the following command to generate an RSA 2048 bit key with no
passphrase:

C<ssh-keygen -t rsa -b 2048 -N "" -m PEM -f my-new-server-key>.

Use a minimum value of 2048 for the C<-b> option. You can create a
stronger key by using 3072 or 4096.

Use the following command to generate an ECDSA 256 bit key with no
passphrase:

C<ssh-keygen -t ecdsa -b 256 -N "" -m PEM -f my-new-server-key>.

Valid values for the C<-b> option for ECDSA are 256, 384, and 521.

Use the following command to generate an ED25519 key with no
passphrase:

C<ssh-keygen -t ed25519 -N "" -f my-new-server-key>.

For all of these commands, you can replace I<my-new-server-key> with a
string of your choice.

If you aren't planning to migrate existing users from an existing
SFTP-enabled server to a new server, don't update the host key.
Accidentally changing a server's host key can be disruptive.

For more information, see Manage host keys for your SFTP-enabled server
(https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key)
in the I<Transfer Family User Guide>.



=head2 IdentityProviderDetails => L<Paws::Transfer::IdentityProviderDetails>

An array containing all of the information required to call a
customer's authentication API method.



=head2 LoggingRole => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role that allows a server to turn on Amazon CloudWatch logging
for Amazon S3 or Amazon EFS events. When set, you can view user
activity in your CloudWatch logs.



=head2 PostAuthenticationLoginBanner => Str

Specifies a string to display when users connect to a server. This
string is displayed after the user authenticates.

The SFTP protocol does not support post-authentication display banners.



=head2 PreAuthenticationLoginBanner => Str

Specifies a string to display when users connect to a server. This
string is displayed before the user authenticates. For example, the
following banner displays details about using the system:

C<This system is for the use of authorized users only. Individuals
using this computer system without authority, or in excess of their
authority, are subject to having all of their activities on this system
monitored and recorded by system personnel.>



=head2 ProtocolDetails => L<Paws::Transfer::ProtocolDetails>

The protocol settings that are configured for your server.

=over

=item *

To indicate passive mode (for FTP and FTPS protocols), use the
C<PassiveIp> parameter. Enter a single dotted-quad IPv4 address, such
as the external IP address of a firewall, router, or load balancer.

=item *

To ignore the error that is generated when the client attempts to use
the C<SETSTAT> command on a file that you are uploading to an Amazon S3
bucket, use the C<SetStatOption> parameter. To have the Transfer Family
server ignore the C<SETSTAT> command and upload files without needing
to make any changes to your SFTP client, set the value to
C<ENABLE_NO_OP>. If you set the C<SetStatOption> parameter to
C<ENABLE_NO_OP>, Transfer Family generates a log entry to Amazon
CloudWatch Logs, so that you can determine when the client is making a
C<SETSTAT> call.

=item *

To determine whether your Transfer Family server resumes recent,
negotiated sessions through a unique session ID, use the
C<TlsSessionResumptionMode> parameter.

=item *

C<As2Transports> indicates the transport method for the AS2 messages.
Currently, only HTTP is supported.

=back




=head2 Protocols => ArrayRef[Str|Undef]

Specifies the file transfer protocol or protocols over which your file
transfer protocol client can connect to your server's endpoint. The
available protocols are:

=over

=item *

C<SFTP> (Secure Shell (SSH) File Transfer Protocol): File transfer over
SSH

=item *

C<FTPS> (File Transfer Protocol Secure): File transfer with TLS
encryption

=item *

C<FTP> (File Transfer Protocol): Unencrypted file transfer

=item *

C<AS2> (Applicability Statement 2): used for transporting structured
business-to-business data

=back

=over

=item *

If you select C<FTPS>, you must choose a certificate stored in
Certificate Manager (ACM) which is used to identify your server when
clients connect to it over FTPS.

=item *

If C<Protocol> includes either C<FTP> or C<FTPS>, then the
C<EndpointType> must be C<VPC> and the C<IdentityProviderType> must be
either C<AWS_DIRECTORY_SERVICE>, C<AWS_LAMBDA>, or C<API_GATEWAY>.

=item *

If C<Protocol> includes C<FTP>, then C<AddressAllocationIds> cannot be
associated.

=item *

If C<Protocol> is set only to C<SFTP>, the C<EndpointType> can be set
to C<PUBLIC> and the C<IdentityProviderType> can be set any of the
supported identity types: C<SERVICE_MANAGED>, C<AWS_DIRECTORY_SERVICE>,
C<AWS_LAMBDA>, or C<API_GATEWAY>.

=item *

If C<Protocol> includes C<AS2>, then the C<EndpointType> must be
C<VPC>, and domain must be Amazon S3.

=back




=head2 S3StorageOptions => L<Paws::Transfer::S3StorageOptions>

Specifies whether or not performance for your Amazon S3 directories is
optimized. This is disabled by default.

By default, home directory mappings have a C<TYPE> of C<DIRECTORY>. If
you enable this option, you would then need to explicitly set the
C<HomeDirectoryMapEntry> C<Type> to C<FILE> if you want a mapping to
have a file target.



=head2 SecurityPolicyName => Str

Specifies the name of the security policy for the server.



=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for a server instance that the
Transfer Family user is assigned to.



=head2 StructuredLogDestinations => ArrayRef[Str|Undef]

Specifies the log groups to which your server logs are sent.

To specify a log group, you must provide the ARN for an existing log
group. In this case, the format of the log group is as follows:

C<arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*>

For example,
C<arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*>

If you have previously specified a log group for a server, you can
clear it, and in effect turn off structured logging, by providing an
empty value for this parameter in an C<update-server> call. For
example:

C<update-server --server-id s-1234567890abcdef0
--structured-log-destinations>



=head2 WorkflowDetails => L<Paws::Transfer::WorkflowDetails>

Specifies the workflow ID for the workflow to assign and the execution
role that's used for executing the workflow.

In addition to a workflow to execute when a file is uploaded
completely, C<WorkflowDetails> can also contain a workflow ID (and
execution role) for a workflow to execute on partial upload. A partial
upload occurs when the server session disconnects while the file is
still being uploaded.

To remove an associated workflow from a server, you can provide an
empty C<OnUpload> object, as in the following example.

C<aws transfer update-server --server-id s-01234567890abcdef
--workflow-details '{"OnUpload":[]}'>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServer in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

