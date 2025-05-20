
package Paws::LookoutEquipment::ImportDataset;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DatasetName => (is => 'ro', isa => 'Str');
  has ServerSideKmsKeyId => (is => 'ro', isa => 'Str');
  has SourceDatasetArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportDataset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ImportDatasetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ImportDataset - Arguments for method ImportDataset on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportDataset on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ImportDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportDataset.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ImportDatasetResponse = $lookoutequipment->ImportDataset(
      ClientToken        => 'MyIdempotenceToken',
      SourceDatasetArn   => 'MyDatasetArn',
      DatasetName        => 'MyDatasetName',        # OPTIONAL
      ServerSideKmsKeyId => 'MyNameOrArn',          # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DatasetArn  = $ImportDatasetResponse->DatasetArn;
    my $DatasetName = $ImportDatasetResponse->DatasetName;
    my $JobId       = $ImportDatasetResponse->JobId;
    my $Status      = $ImportDatasetResponse->Status;

    # Returns a L<Paws::LookoutEquipment::ImportDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ImportDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. If you do not set the client
request token, Amazon Lookout for Equipment generates one.



=head2 DatasetName => Str

The name of the machine learning dataset to be created. If the dataset
already exists, Amazon Lookout for Equipment overwrites the existing
dataset. If you don't specify this field, it is filled with the name of
the source dataset.



=head2 ServerSideKmsKeyId => Str

Provides the identifier of the KMS key key used to encrypt model data
by Amazon Lookout for Equipment.



=head2 B<REQUIRED> SourceDatasetArn => Str

The Amazon Resource Name (ARN) of the dataset to import.



=head2 Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]

Any tags associated with the dataset to be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportDataset in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

