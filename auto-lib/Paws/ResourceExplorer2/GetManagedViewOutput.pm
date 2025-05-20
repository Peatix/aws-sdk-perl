
package Paws::ResourceExplorer2::GetManagedViewOutput;
  use Moose;
  has ManagedView => (is => 'ro', isa => 'Paws::ResourceExplorer2::ManagedView');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::GetManagedViewOutput

=head1 ATTRIBUTES


=head2 ManagedView => L<Paws::ResourceExplorer2::ManagedView>

Details about the specified managed view.


=head2 _request_id => Str


=cut

