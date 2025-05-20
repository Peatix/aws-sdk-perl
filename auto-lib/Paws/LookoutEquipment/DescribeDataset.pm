
package Paws::LookoutEquipment::DescribeDataset;
  use Moose;
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::DescribeDatasetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeDataset - Arguments for method DescribeDataset on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataset on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method DescribeDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataset.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $DescribeDatasetResponse = $lookoutequipment->DescribeDataset(
      DatasetName => 'MyDatasetIdentifier',

    );

    # Results:
    my $CreatedAt            = $DescribeDatasetResponse->CreatedAt;
    my $DataEndTime          = $DescribeDatasetResponse->DataEndTime;
    my $DataQualitySummary   = $DescribeDatasetResponse->DataQualitySummary;
    my $DataStartTime        = $DescribeDatasetResponse->DataStartTime;
    my $DatasetArn           = $DescribeDatasetResponse->DatasetArn;
    my $DatasetName          = $DescribeDatasetResponse->DatasetName;
    my $IngestedFilesSummary = $DescribeDatasetResponse->IngestedFilesSummary;
    my $IngestionInputConfiguration =
      $DescribeDatasetResponse->IngestionInputConfiguration;
    my $LastUpdatedAt      = $DescribeDatasetResponse->LastUpdatedAt;
    my $RoleArn            = $DescribeDatasetResponse->RoleArn;
    my $Schema             = $DescribeDatasetResponse->Schema;
    my $ServerSideKmsKeyId = $DescribeDatasetResponse->ServerSideKmsKeyId;
    my $SourceDatasetArn   = $DescribeDatasetResponse->SourceDatasetArn;
    my $Status             = $DescribeDatasetResponse->Status;

    # Returns a L<Paws::LookoutEquipment::DescribeDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/DescribeDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetName => Str

The name of the dataset to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataset in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

