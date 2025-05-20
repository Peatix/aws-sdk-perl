
package Paws::Backup::CreateLegalHoldOutput;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LegalHoldArn => (is => 'ro', isa => 'Str');
  has LegalHoldId => (is => 'ro', isa => 'Str');
  has RecoveryPointSelection => (is => 'ro', isa => 'Paws::Backup::RecoveryPointSelection');
  has Status => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateLegalHoldOutput

=head1 ATTRIBUTES


=head2 CreationDate => Str

The time when the legal hold was created.


=head2 Description => Str

The description of the legal hold.


=head2 LegalHoldArn => Str

The Amazon Resource Name (ARN) of the legal hold.


=head2 LegalHoldId => Str

The ID of the legal hold.


=head2 RecoveryPointSelection => L<Paws::Backup::RecoveryPointSelection>

The criteria to assign to a set of resources, such as resource types or
backup vaults.


=head2 Status => Str

The status of the legal hold.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"CANCELING">, C<"CANCELED">
=head2 Title => Str

The title of the legal hold.


=head2 _request_id => Str


=cut

