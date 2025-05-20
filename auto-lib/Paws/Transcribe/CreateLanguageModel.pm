
package Paws::Transcribe::CreateLanguageModel;
  use Moose;
  has BaseModelName => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Transcribe::InputDataConfig', required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLanguageModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::CreateLanguageModelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::CreateLanguageModel - Arguments for method CreateLanguageModel on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLanguageModel on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method CreateLanguageModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLanguageModel.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $CreateLanguageModelResponse = $transcribe->CreateLanguageModel(
      BaseModelName   => 'NarrowBand',
      InputDataConfig => {
        DataAccessRoleArn => 'MyDataAccessRoleArn',    # min: 20, max: 2048
        S3Uri             => 'MyUri',                  # min: 1, max: 2000
        TuningDataS3Uri   => 'MyUri',                  # min: 1, max: 2000
      },
      LanguageCode => 'en-US',
      ModelName    => 'MyModelName',
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $BaseModelName   = $CreateLanguageModelResponse->BaseModelName;
    my $InputDataConfig = $CreateLanguageModelResponse->InputDataConfig;
    my $LanguageCode    = $CreateLanguageModelResponse->LanguageCode;
    my $ModelName       = $CreateLanguageModelResponse->ModelName;
    my $ModelStatus     = $CreateLanguageModelResponse->ModelStatus;

    # Returns a L<Paws::Transcribe::CreateLanguageModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/CreateLanguageModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseModelName => Str

The Amazon Transcribe standard language model, or base model, used to
create your custom language model. Amazon Transcribe offers two options
for base models: Wideband and Narrowband.

If the audio you want to transcribe has a sample rate of 16,000 Hz or
greater, choose C<WideBand>. To transcribe audio with a sample rate
less than 16,000 Hz, choose C<NarrowBand>.

Valid values are: C<"NarrowBand">, C<"WideBand">

=head2 B<REQUIRED> InputDataConfig => L<Paws::Transcribe::InputDataConfig>

Contains the Amazon S3 location of the training data you want to use to
create a new custom language model, and permissions to access this
location.

When using C<InputDataConfig>, you must include these sub-parameters:
C<S3Uri>, which is the Amazon S3 location of your training data, and
C<DataAccessRoleArn>, which is the Amazon Resource Name (ARN) of the
role that has permission to access your specified Amazon S3 location.
You can optionally include C<TuningDataS3Uri>, which is the Amazon S3
location of your tuning data. If you specify different Amazon S3
locations for training and tuning data, the ARN you use must have
permissions to access both locations.



=head2 B<REQUIRED> LanguageCode => Str

The language code that represents the language of your model. Each
custom language model must contain terms in only one language, and the
language you select for your custom language model must match the
language of your training and tuning data.

For a list of supported languages and their associated language codes,
refer to the Supported languages
(https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html)
table. Note that US English (C<en-US>) is the only language supported
with Amazon Transcribe Medical.

A custom language model can only be used to transcribe files in the
same language as the model. For example, if you create a custom
language model using US English (C<en-US>), you can only apply this
model to files that contain English audio.

Valid values are: C<"en-US">, C<"hi-IN">, C<"es-US">, C<"en-GB">, C<"en-AU">, C<"de-DE">, C<"ja-JP">

=head2 B<REQUIRED> ModelName => Str

A unique name, chosen by you, for your custom language model.

This name is case sensitive, cannot contain spaces, and must be unique
within an Amazon Web Services account. If you try to create a new
custom language model with the same name as an existing custom language
model, you get a C<ConflictException> error.



=head2 Tags => ArrayRef[L<Paws::Transcribe::Tag>]

Adds one or more custom tags, each in the form of a key:value pair, to
a new custom language model at the time you create this new model.

To learn more about using tags with Amazon Transcribe, refer to Tagging
resources
(https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLanguageModel in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

