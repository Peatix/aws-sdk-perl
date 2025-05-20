
package Paws::EC2::CreateDelegateMacVolumeOwnershipTaskResult;
  use Moose;
  has MacModificationTask => (is => 'ro', isa => 'Paws::EC2::MacModificationTask', request_name => 'macModificationTask', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateDelegateMacVolumeOwnershipTaskResult

=head1 ATTRIBUTES


=head2 MacModificationTask => L<Paws::EC2::MacModificationTask>

Information about the volume ownership delegation task.


=head2 _request_id => Str


=cut

