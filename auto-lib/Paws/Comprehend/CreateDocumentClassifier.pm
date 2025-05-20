
package Paws::Comprehend::CreateDocumentClassifier;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has DocumentClassifierName => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::DocumentClassifierInputDataConfig', required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Mode => (is => 'ro', isa => 'Str');
  has ModelKmsKeyId => (is => 'ro', isa => 'Str');
  has ModelPolicy => (is => 'ro', isa => 'Str');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::DocumentClassifierOutputDataConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Tag]');
  has VersionName => (is => 'ro', isa => 'Str');
  has VolumeKmsKeyId => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::Comprehend::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDocumentClassifier');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::CreateDocumentClassifierResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateDocumentClassifier - Arguments for method CreateDocumentClassifier on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDocumentClassifier on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method CreateDocumentClassifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDocumentClassifier.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $CreateDocumentClassifierResponse =
      $comprehend->CreateDocumentClassifier(
      DataAccessRoleArn      => 'MyIamRoleArn',
      DocumentClassifierName => 'MyComprehendArnName',
      InputDataConfig        => {
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
        DocumentReaderConfig => {
          DocumentReadAction => 'TEXTRACT_DETECT_DOCUMENT_TEXT'
          ,   # values: TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
          DocumentReadMode => 'SERVICE_DEFAULT'
          ,    # values: SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION; OPTIONAL
          FeatureTypes => [
            'TABLES', ...    # values: TABLES, FORMS
          ],    # min: 1, max: 2; OPTIONAL
        },    # OPTIONAL
        DocumentType => 'PLAIN_TEXT_DOCUMENT'
        ,     # values: PLAIN_TEXT_DOCUMENT, SEMI_STRUCTURED_DOCUMENT; OPTIONAL
        Documents => {
          S3Uri     => 'MyS3Uri',    # max: 1024
          TestS3Uri => 'MyS3Uri',    # max: 1024
        },    # OPTIONAL
        LabelDelimiter => 'MyLabelDelimiter',    # min: 1, max: 1; OPTIONAL
        S3Uri          => 'MyS3Uri',             # max: 1024
        TestS3Uri      => 'MyS3Uri',             # max: 1024
      },
      LanguageCode       => 'en',
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
      Mode               => 'MULTI_CLASS',                   # OPTIONAL
      ModelKmsKeyId      => 'MyKmsKeyId',                    # OPTIONAL
      ModelPolicy        => 'MyPolicy',                      # OPTIONAL
      OutputDataConfig   => {
        FlywheelStatsS3Prefix => 'MyS3Uri',                  # max: 1024
        KmsKeyId              => 'MyKmsKeyId',               # max: 2048
        S3Uri                 => 'MyS3Uri',                  # max: 1024
      },    # OPTIONAL
      Tags => [
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
    my $DocumentClassifierArn =
      $CreateDocumentClassifierResponse->DocumentClassifierArn;

    # Returns a L<Paws::Comprehend::CreateDocumentClassifierResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/CreateDocumentClassifier>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants Amazon
Comprehend read access to your input data.



=head2 B<REQUIRED> DocumentClassifierName => Str

The name of the document classifier.



=head2 B<REQUIRED> InputDataConfig => L<Paws::Comprehend::DocumentClassifierInputDataConfig>

Specifies the format and location of the input data for the job.



=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. You can specify any of the
languages supported by Amazon Comprehend. All documents must be in the
same language.

Valid values are: C<"en">, C<"es">, C<"fr">, C<"de">, C<"it">, C<"pt">, C<"ar">, C<"hi">, C<"ja">, C<"ko">, C<"zh">, C<"zh-TW">

=head2 Mode => Str

Indicates the mode in which the classifier will be trained. The
classifier can be trained in multi-class (single-label) mode or
multi-label mode. Multi-class mode identifies a single class label for
each document and multi-label mode identifies one or more class labels
for each document. Multiple labels for an individual document are
separated by a delimiter. The default delimiter between labels is a
pipe (|).

Valid values are: C<"MULTI_CLASS">, C<"MULTI_LABEL">

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

The resource-based policy to attach to your custom document classifier
model. You can use this policy to allow another Amazon Web Services
account to import your custom model.

Provide your policy as a JSON body that you enter as a UTF-8 encoded
string without line breaks. To provide valid JSON, enclose the
attribute names and values in double quotes. If the JSON body is also
enclosed in double quotes, then you must escape the double quotes that
are inside the policy:

C<"{\"attribute\": \"value\", \"attribute\": [\"value\"]}">

To avoid escaping quotes, you can use single quotes to enclose the
policy and double quotes to enclose the JSON names and values:

C<'{"attribute": "value", "attribute": ["value"]}'>



=head2 OutputDataConfig => L<Paws::Comprehend::DocumentClassifierOutputDataConfig>

Specifies the location for the output files from a custom classifier
job. This parameter is required for a request that creates a native
document model.



=head2 Tags => ArrayRef[L<Paws::Comprehend::Tag>]

Tags to associate with the document classifier. A tag is a key-value
pair that adds as a metadata to a resource used by Amazon Comprehend.
For example, a tag with "Sales" as the key might be added to a resource
to indicate its use by the sales department.



=head2 VersionName => Str

The version name given to the newly created classifier. Version names
can have a maximum of 256 characters. Alphanumeric characters, hyphens
(-) and underscores (_) are allowed. The version name must be unique
among all models with the same classifier name in the Amazon Web
Services account/Amazon Web Services Region.



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
(VPC) containing the resources you are using for your custom
classifier. For more information, see Amazon VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDocumentClassifier in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

