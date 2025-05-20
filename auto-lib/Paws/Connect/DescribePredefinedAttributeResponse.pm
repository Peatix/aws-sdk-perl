
package Paws::Connect::DescribePredefinedAttributeResponse;
  use Moose;
  has PredefinedAttribute => (is => 'ro', isa => 'Paws::Connect::PredefinedAttribute');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribePredefinedAttributeResponse

=head1 ATTRIBUTES


=head2 PredefinedAttribute => L<Paws::Connect::PredefinedAttribute>

Information about the predefined attribute.


=head2 _request_id => Str


=cut

