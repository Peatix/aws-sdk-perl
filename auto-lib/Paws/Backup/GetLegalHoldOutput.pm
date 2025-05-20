
package Paws::Backup::GetLegalHoldOutput;
  use Moose;
  has CancelDescription => (is => 'ro', isa => 'Str');
  has CancellationDate => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LegalHoldArn => (is => 'ro', isa => 'Str');
  has LegalHoldId => (is => 'ro', isa => 'Str');
  has RecoveryPointSelection => (is => 'ro', isa => 'Paws::Backup::RecoveryPointSelection');
  has RetainRecordUntil => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetLegalHoldOutput

=head1 ATTRIBUTES


=head2 CancelDescription => Str

The reason for removing the legal hold.


=head2 CancellationDate => Str

The time when the legal hold was cancelled.


=head2 CreationDate => Str

The time when the legal hold was created.


=head2 Description => Str

The description of the legal hold.


=head2 LegalHoldArn => Str

The framework ARN for the specified legal hold. The format of the ARN
depends on the resource type.


=head2 LegalHoldId => Str

The ID of the legal hold.


=head2 RecoveryPointSelection => L<Paws::Backup::RecoveryPointSelection>

The criteria to assign a set of resources, such as resource types or
backup vaults.


=head2 RetainRecordUntil => Str

The date and time until which the legal hold record is retained.


=head2 Status => Str

The status of the legal hold.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"CANCELING">, C<"CANCELED">
=head2 Title => Str

The title of the legal hold.


=head2 _request_id => Str


=cut

