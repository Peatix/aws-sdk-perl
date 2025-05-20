
package Paws::ResourceExplorer2::UpdateViewOutput;
  use Moose;
  has View => (is => 'ro', isa => 'Paws::ResourceExplorer2::View');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::UpdateViewOutput

=head1 ATTRIBUTES


=head2 View => L<Paws::ResourceExplorer2::View>

Details about the view that you changed with this operation.


=head2 _request_id => Str


=cut

