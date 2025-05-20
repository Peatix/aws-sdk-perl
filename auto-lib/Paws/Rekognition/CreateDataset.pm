
package Paws::Rekognition::CreateDataset;
  use Moose;
  has DatasetSource => (is => 'ro', isa => 'Paws::Rekognition::DatasetSource');
  has DatasetType => (is => 'ro', isa => 'Str', required => 1);
  has ProjectArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Rekognition::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::CreateDatasetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateDataset - Arguments for method CreateDataset on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataset on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method CreateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataset.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $CreateDatasetResponse = $rekognition->CreateDataset(
      DatasetType   => 'TRAIN',
      ProjectArn    => 'MyProjectArn',
      DatasetSource => {
        DatasetArn          => 'MyDatasetArn',    # min: 20, max: 2048; OPTIONAL
        GroundTruthManifest => {
          S3Object => {
            Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
            Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
            Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $DatasetArn = $CreateDatasetResponse->DatasetArn;

    # Returns a L<Paws::Rekognition::CreateDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/CreateDataset>

=head1 ATTRIBUTES


=head2 DatasetSource => L<Paws::Rekognition::DatasetSource>

The source files for the dataset. You can specify the ARN of an
existing dataset or specify the Amazon S3 bucket location of an Amazon
Sagemaker format manifest file. If you don't specify C<datasetSource>,
an empty dataset is created. To add labeled images to the dataset, You
can use the console or call UpdateDatasetEntries.



=head2 B<REQUIRED> DatasetType => Str

The type of the dataset. Specify C<TRAIN> to create a training dataset.
Specify C<TEST> to create a test dataset.

Valid values are: C<"TRAIN">, C<"TEST">

=head2 B<REQUIRED> ProjectArn => Str

The ARN of the Amazon Rekognition Custom Labels project to which you
want to asssign the dataset.



=head2 Tags => L<Paws::Rekognition::TagMap>

A set of tags (key-value pairs) that you want to attach to the dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataset in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

