
package Paws::Translate::StartTextTranslationJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Translate::InputDataConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Translate::OutputDataConfig', required => 1);
  has ParallelDataNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Settings => (is => 'ro', isa => 'Paws::Translate::TranslationSettings');
  has SourceLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TargetLanguageCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TerminologyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTextTranslationJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::StartTextTranslationJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::StartTextTranslationJob - Arguments for method StartTextTranslationJob on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTextTranslationJob on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method StartTextTranslationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTextTranslationJob.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $StartTextTranslationJobResponse = $translate->StartTextTranslationJob(
      ClientToken       => 'MyClientTokenString',
      DataAccessRoleArn => 'MyIamRoleArn',
      InputDataConfig   => {
        ContentType => 'MyContentType',    # max: 256
        S3Uri       => 'MyS3Uri',          # max: 1024

      },
      OutputDataConfig => {
        S3Uri         => 'MyS3Uri',        # max: 1024
        EncryptionKey => {
          Id   => 'MyEncryptionKeyID',     # min: 1, max: 400
          Type => 'KMS',                   # values: KMS

        },    # OPTIONAL
      },
      SourceLanguageCode  => 'MyLanguageCodeString',
      TargetLanguageCodes => [
        'MyLanguageCodeString', ...    # min: 2, max: 5
      ],
      JobName           => 'MyJobName',    # OPTIONAL
      ParallelDataNames => [
        'MyResourceName', ...              # min: 1, max: 256
      ],    # OPTIONAL
      Settings => {
        Brevity   => 'ON',        # values: ON; OPTIONAL
        Formality => 'FORMAL',    # values: FORMAL, INFORMAL; OPTIONAL
        Profanity => 'MASK',      # values: MASK; OPTIONAL
      },    # OPTIONAL
      TerminologyNames => [
        'MyResourceName', ...    # min: 1, max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $JobId     = $StartTextTranslationJobResponse->JobId;
    my $JobStatus = $StartTextTranslationJobResponse->JobStatus;

    # Returns a L<Paws::Translate::StartTextTranslationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/StartTextTranslationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. This token is generated for you
when using the Amazon Translate SDK.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of an AWS Identity Access and Management
(IAM) role that grants Amazon Translate read access to your input data.
For more information, see Identity and access management
(https://docs.aws.amazon.com/translate/latest/dg/identity-and-access-management.html).



=head2 B<REQUIRED> InputDataConfig => L<Paws::Translate::InputDataConfig>

Specifies the format and location of the input documents for the
translation job.



=head2 JobName => Str

The name of the batch translation job to be performed.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::Translate::OutputDataConfig>

Specifies the S3 folder to which your job output will be saved.



=head2 ParallelDataNames => ArrayRef[Str|Undef]

The name of a parallel data resource to add to the translation job.
This resource consists of examples that show how you want segments of
text to be translated. If you specify multiple target languages for the
job, the parallel data file must include translations for all the
target languages.

When you add parallel data to a translation job, you create an I<Active
Custom Translation> job.

This parameter accepts only one parallel data resource.

Active Custom Translation jobs are priced at a higher rate than other
jobs that don't use parallel data. For more information, see Amazon
Translate pricing (http://aws.amazon.com/translate/pricing/).

For a list of available parallel data resources, use the
ListParallelData operation.

For more information, see Customizing your translations with parallel
data
(https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-parallel-data.html).



=head2 Settings => L<Paws::Translate::TranslationSettings>

Settings to configure your translation output. You can configure the
following options:

=over

=item *

Brevity: not supported.

=item *

Formality: sets the formality level of the output text.

=item *

Profanity: masks profane words and phrases in your translation output.

=back




=head2 B<REQUIRED> SourceLanguageCode => Str

The language code of the input language. Specify the language if all
input documents share the same language. If you don't know the language
of the source files, or your input documents contains different source
languages, select C<auto>. Amazon Translate auto detects the source
language for each input document. For a list of supported language
codes, see Supported languages
(https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html).



=head2 B<REQUIRED> TargetLanguageCodes => ArrayRef[Str|Undef]

The target languages of the translation job. Enter up to 10 language
codes. Each input file is translated into each target language.

Each language code is 2 or 5 characters long. For a list of language
codes, see Supported languages
(https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html).



=head2 TerminologyNames => ArrayRef[Str|Undef]

The name of a custom terminology resource to add to the translation
job. This resource lists examples source terms and the desired
translation for each term.

This parameter accepts only one custom terminology resource.

If you specify multiple target languages for the job, translate uses
the designated terminology for each requested target language that has
an entry for the source term in the terminology file.

For a list of available custom terminology resources, use the
ListTerminologies operation.

For more information, see Custom terminology
(https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTextTranslationJob in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

