
package Paws::Backup::CreateRestoreTestingPlanOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has RestoreTestingPlanArn => (is => 'ro', isa => 'Str', required => 1);
  has RestoreTestingPlanName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateRestoreTestingPlanOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The date and time a restore testing plan was created, in Unix format
and Coordinated Universal Time (UTC). The value of C<CreationTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087AM.


=head2 B<REQUIRED> RestoreTestingPlanArn => Str

An Amazon Resource Name (ARN) that uniquely identifies the created
restore testing plan.


=head2 B<REQUIRED> RestoreTestingPlanName => Str

This unique string is the name of the restore testing plan.

The name cannot be changed after creation. The name consists of only
alphanumeric characters and underscores. Maximum length is 50.


=head2 _request_id => Str


=cut

