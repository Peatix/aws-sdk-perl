
package Paws::LookoutEquipment::DescribeModelVersion;
  use Moose;
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has ModelVersion => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModelVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::DescribeModelVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeModelVersion - Arguments for method DescribeModelVersion on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModelVersion on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method DescribeModelVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModelVersion.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $DescribeModelVersionResponse = $lookoutequipment->DescribeModelVersion(
      ModelName    => 'MyModelName',
      ModelVersion => 1,

    );

    # Results:
    my $AutoPromotionResult =
      $DescribeModelVersionResponse->AutoPromotionResult;
    my $AutoPromotionResultReason =
      $DescribeModelVersionResponse->AutoPromotionResultReason;
    my $CreatedAt = $DescribeModelVersionResponse->CreatedAt;
    my $DataPreProcessingConfiguration =
      $DescribeModelVersionResponse->DataPreProcessingConfiguration;
    my $DatasetArn  = $DescribeModelVersionResponse->DatasetArn;
    my $DatasetName = $DescribeModelVersionResponse->DatasetName;
    my $EvaluationDataEndTime =
      $DescribeModelVersionResponse->EvaluationDataEndTime;
    my $EvaluationDataStartTime =
      $DescribeModelVersionResponse->EvaluationDataStartTime;
    my $FailedReason       = $DescribeModelVersionResponse->FailedReason;
    my $ImportJobEndTime   = $DescribeModelVersionResponse->ImportJobEndTime;
    my $ImportJobStartTime = $DescribeModelVersionResponse->ImportJobStartTime;
    my $ImportedDataSizeInBytes =
      $DescribeModelVersionResponse->ImportedDataSizeInBytes;
    my $LabelsInputConfiguration =
      $DescribeModelVersionResponse->LabelsInputConfiguration;
    my $LastUpdatedTime = $DescribeModelVersionResponse->LastUpdatedTime;
    my $ModelArn        = $DescribeModelVersionResponse->ModelArn;
    my $ModelDiagnosticsOutputConfiguration =
      $DescribeModelVersionResponse->ModelDiagnosticsOutputConfiguration;
    my $ModelDiagnosticsResultsObject =
      $DescribeModelVersionResponse->ModelDiagnosticsResultsObject;
    my $ModelMetrics      = $DescribeModelVersionResponse->ModelMetrics;
    my $ModelName         = $DescribeModelVersionResponse->ModelName;
    my $ModelQuality      = $DescribeModelVersionResponse->ModelQuality;
    my $ModelVersion      = $DescribeModelVersionResponse->ModelVersion;
    my $ModelVersionArn   = $DescribeModelVersionResponse->ModelVersionArn;
    my $OffCondition      = $DescribeModelVersionResponse->OffCondition;
    my $PriorModelMetrics = $DescribeModelVersionResponse->PriorModelMetrics;
    my $RetrainingAvailableDataInDays =
      $DescribeModelVersionResponse->RetrainingAvailableDataInDays;
    my $RoleArn            = $DescribeModelVersionResponse->RoleArn;
    my $Schema             = $DescribeModelVersionResponse->Schema;
    my $ServerSideKmsKeyId = $DescribeModelVersionResponse->ServerSideKmsKeyId;
    my $SourceModelVersionArn =
      $DescribeModelVersionResponse->SourceModelVersionArn;
    my $SourceType = $DescribeModelVersionResponse->SourceType;
    my $Status     = $DescribeModelVersionResponse->Status;
    my $TrainingDataEndTime =
      $DescribeModelVersionResponse->TrainingDataEndTime;
    my $TrainingDataStartTime =
      $DescribeModelVersionResponse->TrainingDataStartTime;
    my $TrainingExecutionEndTime =
      $DescribeModelVersionResponse->TrainingExecutionEndTime;
    my $TrainingExecutionStartTime =
      $DescribeModelVersionResponse->TrainingExecutionStartTime;

    # Returns a L<Paws::LookoutEquipment::DescribeModelVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/DescribeModelVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelName => Str

The name of the machine learning model that this version belongs to.



=head2 B<REQUIRED> ModelVersion => Int

The version of the machine learning model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModelVersion in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

