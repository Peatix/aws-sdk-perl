
package Paws::Backup::GetRestoreTestingPlanOutput;
  use Moose;
  has RestoreTestingPlan => (is => 'ro', isa => 'Paws::Backup::RestoreTestingPlanForGet', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetRestoreTestingPlanOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestoreTestingPlan => L<Paws::Backup::RestoreTestingPlanForGet>

Specifies the body of a restore testing plan. Includes
C<RestoreTestingPlanName>.


=head2 _request_id => Str


=cut

