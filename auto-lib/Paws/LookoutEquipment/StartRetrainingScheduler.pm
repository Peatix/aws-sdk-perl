
package Paws::LookoutEquipment::StartRetrainingScheduler;
  use Moose;
  has ModelName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartRetrainingScheduler');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::StartRetrainingSchedulerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::StartRetrainingScheduler - Arguments for method StartRetrainingScheduler on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartRetrainingScheduler on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method StartRetrainingScheduler.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartRetrainingScheduler.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $StartRetrainingSchedulerResponse =
      $lookoutequipment->StartRetrainingScheduler(
      ModelName => 'MyModelName',

      );

    # Results:
    my $ModelArn  = $StartRetrainingSchedulerResponse->ModelArn;
    my $ModelName = $StartRetrainingSchedulerResponse->ModelName;
    my $Status    = $StartRetrainingSchedulerResponse->Status;

 # Returns a L<Paws::LookoutEquipment::StartRetrainingSchedulerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/StartRetrainingScheduler>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelName => Str

The name of the model whose retraining scheduler you want to start.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartRetrainingScheduler in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

