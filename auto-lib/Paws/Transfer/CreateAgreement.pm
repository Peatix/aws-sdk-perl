
package Paws::Transfer::CreateAgreement;
  use Moose;
  has AccessRole => (is => 'ro', isa => 'Str', required => 1);
  has BaseDirectory => (is => 'ro', isa => 'Str');
  has CustomDirectories => (is => 'ro', isa => 'Paws::Transfer::CustomDirectoriesType');
  has Description => (is => 'ro', isa => 'Str');
  has EnforceMessageSigning => (is => 'ro', isa => 'Str');
  has LocalProfileId => (is => 'ro', isa => 'Str', required => 1);
  has PartnerProfileId => (is => 'ro', isa => 'Str', required => 1);
  has PreserveFilename => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAgreement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::CreateAgreementResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateAgreement - Arguments for method CreateAgreement on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAgreement on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method CreateAgreement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAgreement.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $CreateAgreementResponse = $transfer->CreateAgreement(
      AccessRole        => 'MyRole',
      LocalProfileId    => 'MyProfileId',
      PartnerProfileId  => 'MyProfileId',
      ServerId          => 'MyServerId',
      BaseDirectory     => 'MyHomeDirectory',    # OPTIONAL
      CustomDirectories => {
        FailedFilesDirectory    => 'MyHomeDirectory',    # max: 1024
        MdnFilesDirectory       => 'MyHomeDirectory',    # max: 1024
        PayloadFilesDirectory   => 'MyHomeDirectory',    # max: 1024
        StatusFilesDirectory    => 'MyHomeDirectory',    # max: 1024
        TemporaryFilesDirectory => 'MyHomeDirectory',    # max: 1024

      },    # OPTIONAL
      Description           => 'MyDescription',    # OPTIONAL
      EnforceMessageSigning => 'ENABLED',          # OPTIONAL
      PreserveFilename      => 'ENABLED',          # OPTIONAL
      Status                => 'ACTIVE',           # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyTagKey',      # max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AgreementId = $CreateAgreementResponse->AgreementId;

    # Returns a L<Paws::Transfer::CreateAgreementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/CreateAgreement>

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



=head2 BaseDirectory => Str

The landing directory (folder) for files transferred by using the AS2
protocol.

A C<BaseDirectory> example is
C</I<amzn-s3-demo-bucket>/home/mydirectory>.



=head2 CustomDirectories => L<Paws::Transfer::CustomDirectoriesType>

A C<CustomDirectoriesType> structure. This structure specifies custom
directories for storing various AS2 message files. You can specify
directories for the following types of files.

=over

=item *

Failed files

=item *

MDN files

=item *

Payload files

=item *

Status files

=item *

Temporary files

=back




=head2 Description => Str

A name or short description to identify the agreement.



=head2 EnforceMessageSigning => Str

Determines whether or not unsigned messages from your trading partners
will be accepted.

=over

=item *

C<ENABLED>: Transfer Family rejects unsigned messages from your trading
partner.

=item *

C<DISABLED> (default value): Transfer Family accepts unsigned messages
from your trading partner.

=back


Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> LocalProfileId => Str

A unique identifier for the AS2 local profile.



=head2 B<REQUIRED> PartnerProfileId => Str

A unique identifier for the partner profile used in the agreement.



=head2 PreserveFilename => Str

Determines whether or not Transfer Family appends a unique string of
characters to the end of the AS2 message payload filename when saving
it.

=over

=item *

C<ENABLED>: the filename provided by your trading parter is preserved
when the file is saved.

=item *

C<DISABLED> (default value): when Transfer Family saves the file, the
filename is adjusted, as described in File names and locations
(https://docs.aws.amazon.com/transfer/latest/userguide/send-as2-messages.html#file-names-as2).

=back


Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for a server instance. This is the
specific server that the agreement uses.



=head2 Status => Str

The status of the agreement. The agreement can be either C<ACTIVE> or
C<INACTIVE>.

Valid values are: C<"ACTIVE">, C<"INACTIVE">

=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that can be used to group and search for agreements.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAgreement in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

