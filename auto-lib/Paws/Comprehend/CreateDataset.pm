
package Paws::Comprehend::CreateDataset;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has DatasetType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FlywheelArn => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::DatasetInputDataConfig', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::CreateDatasetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateDataset - Arguments for method CreateDataset on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataset on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method CreateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataset.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $CreateDatasetResponse = $comprehend->CreateDataset(
      DatasetName     => 'MyComprehendArnName',
      FlywheelArn     => 'MyComprehendFlywheelArn',
      InputDataConfig => {
        AugmentedManifests => [
          {
            AttributeNames => [
              'MyAttributeNamesListItem', ...    # min: 1, max: 63
            ],
            S3Uri               => 'MyS3Uri',              # max: 1024
            AnnotationDataS3Uri => 'MyS3Uri',              # max: 1024
            DocumentType        => 'PLAIN_TEXT_DOCUMENT'
            ,  # values: PLAIN_TEXT_DOCUMENT, SEMI_STRUCTURED_DOCUMENT; OPTIONAL
            SourceDocumentsS3Uri => 'MyS3Uri',    # max: 1024
          },
          ...
        ],    # OPTIONAL
        DataFormat => 'COMPREHEND_CSV'
        ,     # values: COMPREHEND_CSV, AUGMENTED_MANIFEST; OPTIONAL
        DocumentClassifierInputDataConfig => {
          S3Uri          => 'MyS3Uri',             # max: 1024
          LabelDelimiter => 'MyLabelDelimiter',    # min: 1, max: 1; OPTIONAL
        },    # OPTIONAL
        EntityRecognizerInputDataConfig => {
          Documents => {
            S3Uri       => 'MyS3Uri',           # max: 1024
            InputFormat => 'ONE_DOC_PER_FILE'
            ,    # values: ONE_DOC_PER_FILE, ONE_DOC_PER_LINE; OPTIONAL
          },
          Annotations => {
            S3Uri => 'MyS3Uri',    # max: 1024

          },    # OPTIONAL
          EntityList => {
            S3Uri => 'MyS3Uri',    # max: 1024

          },    # OPTIONAL
        },    # OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
      DatasetType        => 'TRAIN',                         # OPTIONAL
      Description        => 'MyDescription',                 # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DatasetArn = $CreateDatasetResponse->DatasetArn;

    # Returns a L<Paws::Comprehend::CreateDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/CreateDataset>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> DatasetName => Str

Name of the dataset.



=head2 DatasetType => Str

The dataset type. You can specify that the data in a dataset is for
training the model or for testing the model.

Valid values are: C<"TRAIN">, C<"TEST">

=head2 Description => Str

Description of the dataset.



=head2 B<REQUIRED> FlywheelArn => Str

The Amazon Resource Number (ARN) of the flywheel of the flywheel to
receive the data.



=head2 B<REQUIRED> InputDataConfig => L<Paws::Comprehend::DatasetInputDataConfig>

Information about the input data configuration. The type of input data
varies based on the format of the input and whether the data is for a
classifier model or an entity recognition model.



=head2 Tags => ArrayRef[L<Paws::Comprehend::Tag>]

Tags for the dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataset in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

