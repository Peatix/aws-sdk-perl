
package Paws::EMR::CreatePersistentAppUIOutput;
  use Moose;
  has PersistentAppUIId => (is => 'ro', isa => 'Str');
  has RuntimeRoleEnabledCluster => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CreatePersistentAppUIOutput

=head1 ATTRIBUTES


=head2 PersistentAppUIId => Str

The persistent application user interface identifier.


=head2 RuntimeRoleEnabledCluster => Bool

Represents if the EMR on EC2 cluster that the persisent application
user interface is created for is a runtime role enabled cluster or not.


=head2 _request_id => Str


=cut

1;