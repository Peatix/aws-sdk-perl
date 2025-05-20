
package Paws::ResourceExplorer2::CreateViewOutput;
  use Moose;
  has View => (is => 'ro', isa => 'Paws::ResourceExplorer2::View');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::CreateViewOutput

=head1 ATTRIBUTES


=head2 View => L<Paws::ResourceExplorer2::View>

A structure that contains the details about the new view.


=head2 _request_id => Str


=cut

