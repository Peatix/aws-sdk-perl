
package Paws::Transfer::CreateConnector;
  use Moose;
  has AccessRole => (is => 'ro', isa => 'Str', required => 1);
  has As2Config => (is => 'ro', isa => 'Paws::Transfer::As2ConnectorConfig');
  has LoggingRole => (is => 'ro', isa => 'Str');
  has SecurityPolicyName => (is => 'ro', isa => 'Str');
  has SftpConfig => (is => 'ro', isa => 'Paws::Transfer::SftpConnectorConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');
  has Url => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnector');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::CreateConnectorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateConnector - Arguments for method CreateConnector on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnector on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method CreateConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnector.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $CreateConnectorResponse = $transfer->CreateConnector(
      AccessRole => 'MyRole',
      Url        => 'MyUrl',
      As2Config  => {
        BasicAuthSecretId   => 'MyAs2ConnectorSecretId',   # max: 2048; OPTIONAL
        Compression         => 'ZLIB',        # values: ZLIB, DISABLED; OPTIONAL
        EncryptionAlgorithm => 'AES128_CBC'
        , # values: AES128_CBC, AES192_CBC, AES256_CBC, DES_EDE3_CBC, NONE; OPTIONAL
        LocalProfileId      => 'MyProfileId',    # min: 19, max: 19; OPTIONAL
        MdnResponse         => 'SYNC',           # values: SYNC, NONE; OPTIONAL
        MdnSigningAlgorithm => 'SHA256'
        ,    # values: SHA256, SHA384, SHA512, SHA1, NONE, DEFAULT; OPTIONAL
        MessageSubject      => 'MyMessageSubject', # min: 1, max: 1024; OPTIONAL
        PartnerProfileId    => 'MyProfileId',      # min: 19, max: 19; OPTIONAL
        PreserveContentType => 'ENABLED',  # values: ENABLED, DISABLED; OPTIONAL
        SigningAlgorithm    =>
          'SHA256',    # values: SHA256, SHA384, SHA512, SHA1, NONE; OPTIONAL
      },    # OPTIONAL
      LoggingRole        => 'MyRole',                           # OPTIONAL
      SecurityPolicyName => 'MyConnectorSecurityPolicyName',    # OPTIONAL
      SftpConfig         => {
        MaxConcurrentConnections => 1,    # min: 1; OPTIONAL
        TrustedHostKeys          => [
          'MySftpConnectorTrustedHostKey', ...    # min: 1, max: 2048
        ],    # max: 10; OPTIONAL
        UserSecretId => 'MySecretId',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ConnectorId = $CreateConnectorResponse->ConnectorId;

    # Returns a L<Paws::Transfer::CreateConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/CreateConnector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessRole => Str

Connectors are used to send files using either the AS2 or SFTP
protocol. For the access role, provide the Amazon Resource Name (ARN)
of the Identity and Access Management role to use.

B<For AS2 connectors>

With AS2, you can send files by calling C<StartFileTransfer> and
specifying the file paths in the request parameter, C<SendFilePaths>.
We use the fileE<rsquo>s parent directory (for example, for
C<--send-file-paths /bucket/dir/file.txt>, parent directory is
C</bucket/dir/>) to temporarily store a processed AS2 message file,
store the MDN when we receive them from the partner, and write a final
JSON file containing relevant metadata of the transmission. So, the
C<AccessRole> needs to provide read and write access to the parent
directory of the file location used in the C<StartFileTransfer>
request. Additionally, you need to provide read and write access to the
parent directory of the files that you intend to send with
C<StartFileTransfer>.

If you are using Basic authentication for your AS2 connector, the
access role requires the C<secretsmanager:GetSecretValue> permission
for the secret. If the secret is encrypted using a customer-managed key
instead of the Amazon Web Services managed key in Secrets Manager, then
the role also needs the C<kms:Decrypt> permission for that key.

B<For SFTP connectors>

Make sure that the access role provides read and write access to the
parent directory of the file location that's used in the
C<StartFileTransfer> request. Additionally, make sure that the role
provides C<secretsmanager:GetSecretValue> permission to Secrets
Manager.



=head2 As2Config => L<Paws::Transfer::As2ConnectorConfig>

A structure that contains the parameters for an AS2 connector object.



=head2 LoggingRole => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role that allows a connector to turn on CloudWatch logging for
Amazon S3 events. When set, you can view connector activity in your
CloudWatch logs.



=head2 SecurityPolicyName => Str

Specifies the name of the security policy for the connector.



=head2 SftpConfig => L<Paws::Transfer::SftpConnectorConfig>

A structure that contains the parameters for an SFTP connector object.



=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that can be used to group and search for connectors.
Tags are metadata attached to connectors for any purpose.



=head2 B<REQUIRED> Url => Str

The URL of the partner's AS2 or SFTP endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnector in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

