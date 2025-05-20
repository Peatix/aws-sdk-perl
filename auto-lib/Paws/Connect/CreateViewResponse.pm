
package Paws::Connect::CreateViewResponse;
  use Moose;
  has View => (is => 'ro', isa => 'Paws::Connect::View');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateViewResponse

=head1 ATTRIBUTES


=head2 View => L<Paws::Connect::View>

A view resource object. Contains metadata and content necessary to
render the view.


=head2 _request_id => Str


=cut

