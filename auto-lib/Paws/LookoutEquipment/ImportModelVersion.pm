
package Paws::LookoutEquipment::ImportModelVersion;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has InferenceDataImportStrategy => (is => 'ro', isa => 'Str');
  has LabelsInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::LabelsInputConfiguration');
  has ModelName => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has ServerSideKmsKeyId => (is => 'ro', isa => 'Str');
  has SourceModelVersionArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportModelVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ImportModelVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ImportModelVersion - Arguments for method ImportModelVersion on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportModelVersion on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ImportModelVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportModelVersion.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ImportModelVersionResponse = $lookoutequipment->ImportModelVersion(
      ClientToken                 => 'MyIdempotenceToken',
      DatasetName                 => 'MyDatasetIdentifier',
      SourceModelVersionArn       => 'MyModelVersionArn',
      InferenceDataImportStrategy => 'NO_IMPORT',             # OPTIONAL
      LabelsInputConfiguration    => {
        LabelGroupName       => 'MyLabelGroupName', # min: 1, max: 200; OPTIONAL
        S3InputConfiguration => {
          Bucket => 'MyS3Bucket',                   # min: 3, max: 63
          Prefix => 'MyS3Prefix',                   # max: 1024; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ModelName          => 'MyModelName',     # OPTIONAL
      RoleArn            => 'MyIamRoleArn',    # OPTIONAL
      ServerSideKmsKeyId => 'MyNameOrArn',     # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ModelArn        = $ImportModelVersionResponse->ModelArn;
    my $ModelName       = $ImportModelVersionResponse->ModelName;
    my $ModelVersion    = $ImportModelVersionResponse->ModelVersion;
    my $ModelVersionArn = $ImportModelVersionResponse->ModelVersionArn;
    my $Status          = $ImportModelVersionResponse->Status;

    # Returns a L<Paws::LookoutEquipment::ImportModelVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ImportModelVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. If you do not set the client
request token, Amazon Lookout for Equipment generates one.



=head2 B<REQUIRED> DatasetName => Str

The name of the dataset for the machine learning model being imported.



=head2 InferenceDataImportStrategy => Str

Indicates how to import the accumulated inference data when a model
version is imported. The possible values are as follows:

=over

=item *

NO_IMPORT E<ndash> Don't import the data.

=item *

ADD_WHEN_EMPTY E<ndash> Only import the data from the source model if
there is no existing data in the target model.

=item *

OVERWRITE E<ndash> Import the data from the source model and overwrite
the existing data in the target model.

=back


Valid values are: C<"NO_IMPORT">, C<"ADD_WHEN_EMPTY">, C<"OVERWRITE">

=head2 LabelsInputConfiguration => L<Paws::LookoutEquipment::LabelsInputConfiguration>





=head2 ModelName => Str

The name for the machine learning model to be created. If the model
already exists, Amazon Lookout for Equipment creates a new version. If
you do not specify this field, it is filled with the name of the source
model.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of a role with permission to access the
data source being used to create the machine learning model.



=head2 ServerSideKmsKeyId => Str

Provides the identifier of the KMS key key used to encrypt model data
by Amazon Lookout for Equipment.



=head2 B<REQUIRED> SourceModelVersionArn => Str

The Amazon Resource Name (ARN) of the model version to import.



=head2 Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]

The tags associated with the machine learning model to be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportModelVersion in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

