
package Paws::LookoutEquipment::DescribeRetrainingSchedulerResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has LookbackWindow => (is => 'ro', isa => 'Str');
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has PromoteMode => (is => 'ro', isa => 'Str');
  has RetrainingFrequency => (is => 'ro', isa => 'Str');
  has RetrainingStartDate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeRetrainingSchedulerResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Indicates the time and date at which the retraining scheduler was
created.


=head2 LookbackWindow => Str

The number of past days of data used for retraining.


=head2 ModelArn => Str

The ARN of the model that the retraining scheduler is attached to.


=head2 ModelName => Str

The name of the model that the retraining scheduler is attached to.


=head2 PromoteMode => Str

Indicates how the service uses new models. In C<MANAGED> mode, new
models are used for inference if they have better performance than the
current model. In C<MANUAL> mode, the new models are not used until
they are manually activated
(https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/versioning-model.html#model-activation).

Valid values are: C<"MANAGED">, C<"MANUAL">
=head2 RetrainingFrequency => Str

The frequency at which the model retraining is set. This follows the
ISO 8601 (https://en.wikipedia.org/wiki/ISO_8601#Durations) guidelines.


=head2 RetrainingStartDate => Str

The start date for the retraining scheduler. Lookout for Equipment
truncates the time you provide to the nearest UTC day.


=head2 Status => Str

The status of the retraining scheduler.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">
=head2 UpdatedAt => Str

Indicates the time and date at which the retraining scheduler was
updated.


=head2 _request_id => Str


=cut

1;