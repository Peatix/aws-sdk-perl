
package Paws::LookoutEquipment::DescribeRetrainingScheduler;
  use Moose;
  has ModelName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRetrainingScheduler');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::DescribeRetrainingSchedulerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeRetrainingScheduler - Arguments for method DescribeRetrainingScheduler on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRetrainingScheduler on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method DescribeRetrainingScheduler.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRetrainingScheduler.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $DescribeRetrainingSchedulerResponse =
      $lookoutequipment->DescribeRetrainingScheduler(
      ModelName => 'MyModelName',

      );

    # Results:
    my $CreatedAt      = $DescribeRetrainingSchedulerResponse->CreatedAt;
    my $LookbackWindow = $DescribeRetrainingSchedulerResponse->LookbackWindow;
    my $ModelArn       = $DescribeRetrainingSchedulerResponse->ModelArn;
    my $ModelName      = $DescribeRetrainingSchedulerResponse->ModelName;
    my $PromoteMode    = $DescribeRetrainingSchedulerResponse->PromoteMode;
    my $RetrainingFrequency =
      $DescribeRetrainingSchedulerResponse->RetrainingFrequency;
    my $RetrainingStartDate =
      $DescribeRetrainingSchedulerResponse->RetrainingStartDate;
    my $Status    = $DescribeRetrainingSchedulerResponse->Status;
    my $UpdatedAt = $DescribeRetrainingSchedulerResponse->UpdatedAt;

# Returns a L<Paws::LookoutEquipment::DescribeRetrainingSchedulerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/DescribeRetrainingScheduler>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelName => Str

The name of the model that the retraining scheduler is attached to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRetrainingScheduler in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

