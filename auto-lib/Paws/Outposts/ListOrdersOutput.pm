
package Paws::Outposts::ListOrdersOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Orders => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::OrderSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListOrdersOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 Orders => ArrayRef[L<Paws::Outposts::OrderSummary>]

Information about the orders.


=head2 _request_id => Str


=cut

