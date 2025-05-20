
package Paws::Outposts::GetOrderOutput;
  use Moose;
  has Order => (is => 'ro', isa => 'Paws::Outposts::Order');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetOrderOutput

=head1 ATTRIBUTES


=head2 Order => L<Paws::Outposts::Order>




=head2 _request_id => Str


=cut

