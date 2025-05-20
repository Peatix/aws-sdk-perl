
package Paws::LookoutEquipment::DescribeDataIngestionJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataIngestionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::DescribeDataIngestionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeDataIngestionJob - Arguments for method DescribeDataIngestionJob on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataIngestionJob on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method DescribeDataIngestionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataIngestionJob.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $DescribeDataIngestionJobResponse =
      $lookoutequipment->DescribeDataIngestionJob(
      JobId => 'MyIngestionJobId',

      );

    # Results:
    my $CreatedAt   = $DescribeDataIngestionJobResponse->CreatedAt;
    my $DataEndTime = $DescribeDataIngestionJobResponse->DataEndTime;
    my $DataQualitySummary =
      $DescribeDataIngestionJobResponse->DataQualitySummary;
    my $DataStartTime    = $DescribeDataIngestionJobResponse->DataStartTime;
    my $DatasetArn       = $DescribeDataIngestionJobResponse->DatasetArn;
    my $FailedReason     = $DescribeDataIngestionJobResponse->FailedReason;
    my $IngestedDataSize = $DescribeDataIngestionJobResponse->IngestedDataSize;
    my $IngestedFilesSummary =
      $DescribeDataIngestionJobResponse->IngestedFilesSummary;
    my $IngestionInputConfiguration =
      $DescribeDataIngestionJobResponse->IngestionInputConfiguration;
    my $JobId            = $DescribeDataIngestionJobResponse->JobId;
    my $RoleArn          = $DescribeDataIngestionJobResponse->RoleArn;
    my $SourceDatasetArn = $DescribeDataIngestionJobResponse->SourceDatasetArn;
    my $Status           = $DescribeDataIngestionJobResponse->Status;
    my $StatusDetail     = $DescribeDataIngestionJobResponse->StatusDetail;

 # Returns a L<Paws::LookoutEquipment::DescribeDataIngestionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/DescribeDataIngestionJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The job ID of the data ingestion job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataIngestionJob in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

