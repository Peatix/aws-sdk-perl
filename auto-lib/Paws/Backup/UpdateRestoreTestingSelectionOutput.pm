
package Paws::Backup::UpdateRestoreTestingSelectionOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has RestoreTestingPlanArn => (is => 'ro', isa => 'Str', required => 1);
  has RestoreTestingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has RestoreTestingSelectionName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateRestoreTestingSelectionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time the resource testing selection was updated successfully.


=head2 B<REQUIRED> RestoreTestingPlanArn => Str

Unique string that is the name of the restore testing plan.


=head2 B<REQUIRED> RestoreTestingPlanName => Str

The restore testing plan with which the updated restore testing
selection is associated.


=head2 B<REQUIRED> RestoreTestingSelectionName => Str

The returned restore testing selection name.


=head2 B<REQUIRED> UpdateTime => Str

The time the update completed for the restore testing selection.


=head2 _request_id => Str


=cut

