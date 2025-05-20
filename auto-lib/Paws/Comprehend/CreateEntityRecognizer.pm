
package Paws::Comprehend::CreateEntityRecognizer;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::EntityRecognizerInputDataConfig', required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has ModelKmsKeyId => (is => 'ro', isa => 'Str');
  has ModelPolicy => (is => 'ro', isa => 'Str');
  has RecognizerName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Tag]');
  has VersionName => (is => 'ro', isa => 'Str');
  has VolumeKmsKeyId => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::Comprehend::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEntityRecognizer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::CreateEntityRecognizerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateEntityRecognizer - Arguments for method CreateEntityRecognizer on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEntityRecognizer on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method CreateEntityRecognizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEntityRecognizer.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $CreateEntityRecognizerResponse = $comprehend->CreateEntityRecognizer(
      DataAccessRoleArn => 'MyIamRoleArn',
      InputDataConfig   => {
        EntityTypes => [
          {
            Type => 'MyEntityTypeName',    # max: 64

          },
          ...
        ],
        Annotations => {
          S3Uri     => 'MyS3Uri',    # max: 1024
          TestS3Uri => 'MyS3Uri',    # max: 1024
        },    # OPTIONAL
        AugmentedManifests => [
          {
            AttributeNames => [
              'MyAttributeNamesListItem', ...    # min: 1, max: 63
            ],
            S3Uri               => 'MyS3Uri',              # max: 1024
            AnnotationDataS3Uri => 'MyS3Uri',              # max: 1024
            DocumentType        => 'PLAIN_TEXT_DOCUMENT'
            ,  # values: PLAIN_TEXT_DOCUMENT, SEMI_STRUCTURED_DOCUMENT; OPTIONAL
            SourceDocumentsS3Uri => 'MyS3Uri',   # max: 1024
            Split                => 'TRAIN',     # values: TRAIN, TEST; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        DataFormat => 'COMPREHEND_CSV'
        ,     # values: COMPREHEND_CSV, AUGMENTED_MANIFEST; OPTIONAL
        Documents => {
          S3Uri       => 'MyS3Uri',           # max: 1024
          InputFormat => 'ONE_DOC_PER_FILE'
          ,    # values: ONE_DOC_PER_FILE, ONE_DOC_PER_LINE; OPTIONAL
          TestS3Uri => 'MyS3Uri',    # max: 1024
        },    # OPTIONAL
        EntityList => {
          S3Uri => 'MyS3Uri',    # max: 1024

        },    # OPTIONAL
      },
      LanguageCode       => 'en',
      RecognizerName     => 'MyComprehendArnName',
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
      ModelKmsKeyId      => 'MyKmsKeyId',                    # OPTIONAL
      ModelPolicy        => 'MyPolicy',                      # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      VersionName    => 'MyVersionName',    # OPTIONAL
      VolumeKmsKeyId => 'MyKmsKeyId',       # OPTIONAL
      VpcConfig      => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...          # min: 1, max: 32
        ],    # min: 1, max: 5
        Subnets => [
          'MySubnetId', ...    # min: 1, max: 32
        ],    # min: 1, max: 16

      },    # OPTIONAL
    );

    # Results:
    my $EntityRecognizerArn =
      $CreateEntityRecognizerResponse->EntityRecognizerArn;

    # Returns a L<Paws::Comprehend::CreateEntityRecognizerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/CreateEntityRecognizer>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants Amazon
Comprehend read access to your input data.



=head2 B<REQUIRED> InputDataConfig => L<Paws::Comprehend::EntityRecognizerInputDataConfig>

Specifies the format and location of the input data. The S3 bucket
containing the input data must be located in the same Region as the
entity recognizer being created.



=head2 B<REQUIRED> LanguageCode => Str

You can specify any of the following languages: English ("en"), Spanish
("es"), French ("fr"), Italian ("it"), German ("de"), or Portuguese
("pt"). If you plan to use this entity recognizer with PDF, Word, or
image input files, you must specify English as the language. All
training documents must be in the same language.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">, C<"ar">, C<"hi">, C<"ja">, C<"ko">, C<"zh">, C<"zh-TW">

=head2 ModelKmsKeyId => Str

ID for the KMS key that Amazon Comprehend uses to encrypt trained
custom models. The ModelKmsKeyId can be either of the following
formats:

=over

=item *

KMS Key ID: C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS Key:
C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back




=head2 ModelPolicy => Str

The JSON resource-based policy to attach to your custom entity
recognizer model. You can use this policy to allow another Amazon Web
Services account to import your custom model.

Provide your JSON as a UTF-8 encoded string without line breaks. To
provide valid JSON for your policy, enclose the attribute names and
values in double quotes. If the JSON body is also enclosed in double
quotes, then you must escape the double quotes that are inside the
policy:

C<"{\"attribute\": \"value\", \"attribute\": [\"value\"]}">

To avoid escaping quotes, you can use single quotes to enclose the
policy and double quotes to enclose the JSON names and values:

C<'{"attribute": "value", "attribute": ["value"]}'>



=head2 B<REQUIRED> RecognizerName => Str

The name given to the newly created recognizer. Recognizer names can be
a maximum of 256 characters. Alphanumeric characters, hyphens (-) and
underscores (_) are allowed. The name must be unique in the
account/Region.



=head2 Tags => ArrayRef[L<Paws::Comprehend::Tag>]

Tags to associate with the entity recognizer. A tag is a key-value pair
that adds as a metadata to a resource used by Amazon Comprehend. For
example, a tag with "Sales" as the key might be added to a resource to
indicate its use by the sales department.



=head2 VersionName => Str

The version name given to the newly created recognizer. Version names
can be a maximum of 256 characters. Alphanumeric characters, hyphens
(-) and underscores (_) are allowed. The version name must be unique
among all models with the same recognizer name in the account/Region.



=head2 VolumeKmsKeyId => Str

ID for the Amazon Web Services Key Management Service (KMS) key that
Amazon Comprehend uses to encrypt data on the storage volume attached
to the ML compute instance(s) that process the analysis job. The
VolumeKmsKeyId can be either of the following formats:

=over

=item *

KMS Key ID: C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS Key:
C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back




=head2 VpcConfig => L<Paws::Comprehend::VpcConfig>

Configuration parameters for an optional private Virtual Private Cloud
(VPC) containing the resources you are using for your custom entity
recognizer. For more information, see Amazon VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEntityRecognizer in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

