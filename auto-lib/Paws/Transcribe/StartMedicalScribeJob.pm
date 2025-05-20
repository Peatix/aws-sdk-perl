
package Paws::Transcribe::StartMedicalScribeJob;
  use Moose;
  has ChannelDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::MedicalScribeChannelDefinition]');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has KMSEncryptionContext => (is => 'ro', isa => 'Paws::Transcribe::KMSEncryptionContextMap');
  has Media => (is => 'ro', isa => 'Paws::Transcribe::Media', required => 1);
  has MedicalScribeJobName => (is => 'ro', isa => 'Str', required => 1);
  has OutputBucketName => (is => 'ro', isa => 'Str', required => 1);
  has OutputEncryptionKMSKeyId => (is => 'ro', isa => 'Str');
  has Settings => (is => 'ro', isa => 'Paws::Transcribe::MedicalScribeSettings', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMedicalScribeJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::StartMedicalScribeJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::StartMedicalScribeJob - Arguments for method StartMedicalScribeJob on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMedicalScribeJob on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method StartMedicalScribeJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMedicalScribeJob.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $StartMedicalScribeJobResponse = $transcribe->StartMedicalScribeJob(
      DataAccessRoleArn => 'MyDataAccessRoleArn',
      Media             => {
        MediaFileUri         => 'MyUri',    # min: 1, max: 2000; OPTIONAL
        RedactedMediaFileUri => 'MyUri',    # min: 1, max: 2000; OPTIONAL
      },
      MedicalScribeJobName => 'MyTranscriptionJobName',
      OutputBucketName     => 'MyOutputBucketName',
      Settings             => {
        ChannelIdentification          => 1,    # OPTIONAL
        ClinicalNoteGenerationSettings => {
          NoteTemplate => 'HISTORY_AND_PHYSICAL'
          ,    # values: HISTORY_AND_PHYSICAL, GIRPP; OPTIONAL
        },    # OPTIONAL
        MaxSpeakerLabels       => 1,    # min: 2, max: 30; OPTIONAL
        ShowSpeakerLabels      => 1,    # OPTIONAL
        VocabularyFilterMethod =>
          'remove',                     # values: remove, mask, tag; OPTIONAL
        VocabularyFilterName =>
          'MyVocabularyFilterName',     # min: 1, max: 200; OPTIONAL
        VocabularyName => 'MyVocabularyName',    # min: 1, max: 200; OPTIONAL
      },
      ChannelDefinitions => [
        {
          ChannelId       => 1,                  # max: 1
          ParticipantRole => 'PATIENT',          # values: PATIENT, CLINICIAN

        },
        ...
      ],    # OPTIONAL
      KMSEncryptionContext => {
        'MyNonEmptyString' =>
          'MyNonEmptyString', # key: min: 1, max: 2000, value: min: 1, max: 2000
      },    # OPTIONAL
      OutputEncryptionKMSKeyId => 'MyKMSKeyId',    # OPTIONAL
      Tags                     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $MedicalScribeJob = $StartMedicalScribeJobResponse->MedicalScribeJob;

    # Returns a L<Paws::Transcribe::StartMedicalScribeJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/StartMedicalScribeJob>

=head1 ATTRIBUTES


=head2 ChannelDefinitions => ArrayRef[L<Paws::Transcribe::MedicalScribeChannelDefinition>]

Makes it possible to specify which speaker is on which channel. For
example, if the clinician is the first participant to speak, you would
set C<ChannelId> of the first C<ChannelDefinition> in the list to C<0>
(to indicate the first channel) and C<ParticipantRole> to C<CLINICIAN>
(to indicate that it's the clinician speaking). Then you would set the
C<ChannelId> of the second C<ChannelDefinition> in the list to C<1> (to
indicate the second channel) and C<ParticipantRole> to C<PATIENT> (to
indicate that it's the patient speaking).



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has permissions to
access the Amazon S3 bucket that contains your input files, write to
the output bucket, and use your KMS key if supplied. If the role that
you specify doesnE<rsquo>t have the appropriate permissions your
request fails.

IAM role ARNs have the format
C<arn:partition:iam::account:role/role-name-with-path>. For example:
C<arn:aws:iam::111122223333:role/Admin>.

For more information, see IAM ARNs
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns).



=head2 KMSEncryptionContext => L<Paws::Transcribe::KMSEncryptionContextMap>

A map of plain text, non-secret key:value pairs, known as encryption
context pairs, that provide an added layer of security for your data.
For more information, see KMS encryption context
(https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context)
and Asymmetric keys in KMS
(https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html).



=head2 B<REQUIRED> Media => L<Paws::Transcribe::Media>





=head2 B<REQUIRED> MedicalScribeJobName => Str

A unique name, chosen by you, for your Medical Scribe job.

This name is case sensitive, cannot contain spaces, and must be unique
within an Amazon Web Services account. If you try to create a new job
with the same name as an existing job, you get a C<ConflictException>
error.



=head2 B<REQUIRED> OutputBucketName => Str

The name of the Amazon S3 bucket where you want your Medical Scribe
output stored. Do not include the C<S3://> prefix of the specified
bucket.

Note that the role specified in the C<DataAccessRoleArn> request
parameter must have permission to use the specified location. You can
change Amazon S3 permissions using the Amazon Web Services Management
Console (https://console.aws.amazon.com/s3). See also Permissions
Required for IAM User Roles
(https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user).



=head2 OutputEncryptionKMSKeyId => Str

The KMS key you want to use to encrypt your Medical Scribe output.

If using a key located in the B<current> Amazon Web Services account,
you can specify your KMS key in one of four ways:

=over

=item 1.

Use the KMS key ID itself. For example,
C<1234abcd-12ab-34cd-56ef-1234567890ab>.

=item 2.

Use an alias for the KMS key ID. For example, C<alias/ExampleAlias>.

=item 3.

Use the Amazon Resource Name (ARN) for the KMS key ID. For example,
C<arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab>.

=item 4.

Use the ARN for the KMS key alias. For example,
C<arn:aws:kms:region:account-ID:alias/ExampleAlias>.

=back

If using a key located in a B<different> Amazon Web Services account
than the current Amazon Web Services account, you can specify your KMS
key in one of two ways:

=over

=item 1.

Use the ARN for the KMS key ID. For example,
C<arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab>.

=item 2.

Use the ARN for the KMS key alias. For example,
C<arn:aws:kms:region:account-ID:alias/ExampleAlias>.

=back

If you do not specify an encryption key, your output is encrypted with
the default Amazon S3 key (SSE-S3).

Note that the role specified in the C<DataAccessRoleArn> request
parameter must have permission to use the specified KMS key.



=head2 B<REQUIRED> Settings => L<Paws::Transcribe::MedicalScribeSettings>

Makes it possible to control how your Medical Scribe job is processed
using a C<MedicalScribeSettings> object. Specify
C<ChannelIdentification> if C<ChannelDefinitions> are set. Enabled
C<ShowSpeakerLabels> if C<ChannelIdentification> and
C<ChannelDefinitions> are not set. One and only one of
C<ChannelIdentification> and C<ShowSpeakerLabels> must be set. If
C<ShowSpeakerLabels> is set, C<MaxSpeakerLabels> must also be set. Use
C<Settings> to specify a vocabulary or vocabulary filter or both using
C<VocabularyName>, C<VocabularyFilterName>. C<VocabularyFilterMethod>
must be specified if C<VocabularyFilterName> is set.



=head2 Tags => ArrayRef[L<Paws::Transcribe::Tag>]

Adds one or more custom tags, each in the form of a key:value pair, to
the Medica Scribe job.

To learn more about using tags with Amazon Transcribe, refer to Tagging
resources
(https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMedicalScribeJob in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

