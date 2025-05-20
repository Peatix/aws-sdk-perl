
package Paws::LookoutEquipment::CreateRetrainingSchedulerResponse;
  use Moose;
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateRetrainingSchedulerResponse

=head1 ATTRIBUTES


=head2 ModelArn => Str

The ARN of the model that you added the retraining scheduler to.


=head2 ModelName => Str

The name of the model that you added the retraining scheduler to.


=head2 Status => Str

The status of the retraining scheduler.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;