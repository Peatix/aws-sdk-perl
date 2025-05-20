
package Paws::LookoutEquipment::CreateRetrainingScheduler;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has LookbackWindow => (is => 'ro', isa => 'Str', required => 1);
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has PromoteMode => (is => 'ro', isa => 'Str');
  has RetrainingFrequency => (is => 'ro', isa => 'Str', required => 1);
  has RetrainingStartDate => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRetrainingScheduler');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::CreateRetrainingSchedulerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateRetrainingScheduler - Arguments for method CreateRetrainingScheduler on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRetrainingScheduler on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method CreateRetrainingScheduler.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRetrainingScheduler.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $CreateRetrainingSchedulerResponse =
      $lookoutequipment->CreateRetrainingScheduler(
      ClientToken         => 'MyIdempotenceToken',
      LookbackWindow      => 'MyLookbackWindow',
      ModelName           => 'MyModelName',
      RetrainingFrequency => 'MyRetrainingFrequency',
      PromoteMode         => 'MANAGED',                 # OPTIONAL
      RetrainingStartDate => '1970-01-01T01:00:00',     # OPTIONAL
      );

    # Results:
    my $ModelArn  = $CreateRetrainingSchedulerResponse->ModelArn;
    my $ModelName = $CreateRetrainingSchedulerResponse->ModelName;
    my $Status    = $CreateRetrainingSchedulerResponse->Status;

# Returns a L<Paws::LookoutEquipment::CreateRetrainingSchedulerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/CreateRetrainingScheduler>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. If you do not set the client
request token, Amazon Lookout for Equipment generates one.



=head2 B<REQUIRED> LookbackWindow => Str

The number of past days of data that will be used for retraining.



=head2 B<REQUIRED> ModelName => Str

The name of the model to add the retraining scheduler to.



=head2 PromoteMode => Str

Indicates how the service will use new models. In C<MANAGED> mode, new
models will automatically be used for inference if they have better
performance than the current model. In C<MANUAL> mode, the new models
will not be used until they are manually activated
(https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation).

Valid values are: C<"MANAGED">, C<"MANUAL">

=head2 B<REQUIRED> RetrainingFrequency => Str

This parameter uses the ISO 8601
(https://en.wikipedia.org/wiki/ISO_8601#Durations) standard to set the
frequency at which you want retraining to occur in terms of Years,
Months, and/or Days (note: other parameters like Time are not currently
supported). The minimum value is 30 days (P30D) and the maximum value
is 1 year (P1Y). For example, the following values are valid:

=over

=item *

P3M15D E<ndash> Every 3 months and 15 days

=item *

P2M E<ndash> Every 2 months

=item *

P150D E<ndash> Every 150 days

=back




=head2 RetrainingStartDate => Str

The start date for the retraining scheduler. Lookout for Equipment
truncates the time you provide to the nearest UTC day.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRetrainingScheduler in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

