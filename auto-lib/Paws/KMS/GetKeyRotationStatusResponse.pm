
package Paws::KMS::GetKeyRotationStatusResponse;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');
  has KeyRotationEnabled => (is => 'ro', isa => 'Bool');
  has NextRotationDate => (is => 'ro', isa => 'Str');
  has OnDemandRotationStartDate => (is => 'ro', isa => 'Str');
  has RotationPeriodInDays => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetKeyRotationStatusResponse

=head1 ATTRIBUTES


=head2 KeyId => Str

Identifies the specified symmetric encryption KMS key.


=head2 KeyRotationEnabled => Bool

A Boolean value that specifies whether key rotation is enabled.


=head2 NextRotationDate => Str

The next date that KMS will automatically rotate the key material.


=head2 OnDemandRotationStartDate => Str

Identifies the date and time that an in progress on-demand rotation was
initiated.

The KMS API follows an eventual consistency
(https://docs.aws.amazon.com/kms/latest/developerguide/programming-eventual-consistency.html)
model due to the distributed nature of the system. As a result, there
might be a slight delay between initiating on-demand key rotation and
the rotation's completion. Once the on-demand rotation is complete, use
ListKeyRotations to view the details of the on-demand rotation.


=head2 RotationPeriodInDays => Int

The number of days between each automatic rotation. The default value
is 365 days.


=head2 _request_id => Str


=cut

1;