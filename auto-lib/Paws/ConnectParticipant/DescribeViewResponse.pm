
package Paws::ConnectParticipant::DescribeViewResponse;
  use Moose;
  has View => (is => 'ro', isa => 'Paws::ConnectParticipant::View');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::DescribeViewResponse

=head1 ATTRIBUTES


=head2 View => L<Paws::ConnectParticipant::View>

A view resource object. Contains metadata and content necessary to
render the view.


=head2 _request_id => Str


=cut

