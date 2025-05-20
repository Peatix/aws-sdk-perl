
package Paws::Connect::CreateViewVersionResponse;
  use Moose;
  has View => (is => 'ro', isa => 'Paws::Connect::View');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateViewVersionResponse

=head1 ATTRIBUTES


=head2 View => L<Paws::Connect::View>

All view data is contained within the View object.


=head2 _request_id => Str


=cut

