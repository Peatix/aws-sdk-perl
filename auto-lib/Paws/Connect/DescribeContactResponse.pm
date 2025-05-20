
package Paws::Connect::DescribeContactResponse;
  use Moose;
  has Contact => (is => 'ro', isa => 'Paws::Connect::Contact');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeContactResponse

=head1 ATTRIBUTES


=head2 Contact => L<Paws::Connect::Contact>

Information about the contact.


=head2 _request_id => Str


=cut

