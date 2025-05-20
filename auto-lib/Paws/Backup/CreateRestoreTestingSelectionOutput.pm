
package Paws::Backup::CreateRestoreTestingSelectionOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has RestoreTestingPlanArn => (is => 'ro', isa => 'Str', required => 1);
  has RestoreTestingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has RestoreTestingSelectionName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateRestoreTestingSelectionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time that the resource testing selection was created.


=head2 B<REQUIRED> RestoreTestingPlanArn => Str

The ARN of the restore testing plan with which the restore testing
selection is associated.


=head2 B<REQUIRED> RestoreTestingPlanName => Str

The name of the restore testing plan.

The name cannot be changed after creation. The name consists of only
alphanumeric characters and underscores. Maximum length is 50.


=head2 B<REQUIRED> RestoreTestingSelectionName => Str

The name of the restore testing selection for the related restore
testing plan.


=head2 _request_id => Str


=cut

