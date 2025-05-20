
package Paws::Backup::UpdateRestoreTestingPlanOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has RestoreTestingPlanArn => (is => 'ro', isa => 'Str', required => 1);
  has RestoreTestingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateRestoreTestingPlanOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time the resource testing plan was created.


=head2 B<REQUIRED> RestoreTestingPlanArn => Str

Unique ARN (Amazon Resource Name) of the restore testing plan.


=head2 B<REQUIRED> RestoreTestingPlanName => Str

The name cannot be changed after creation. The name consists of only
alphanumeric characters and underscores. Maximum length is 50.


=head2 B<REQUIRED> UpdateTime => Str

The time the update completed for the restore testing plan.


=head2 _request_id => Str


=cut

