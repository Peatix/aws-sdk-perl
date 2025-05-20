
package Paws::ResourceExplorer2::GetViewOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ResourceExplorer2::TagMap');
  has View => (is => 'ro', isa => 'Paws::ResourceExplorer2::View');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::GetViewOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::ResourceExplorer2::TagMap>

Tag key and value pairs that are attached to the view.


=head2 View => L<Paws::ResourceExplorer2::View>

A structure that contains the details for the requested view.


=head2 _request_id => Str


=cut

