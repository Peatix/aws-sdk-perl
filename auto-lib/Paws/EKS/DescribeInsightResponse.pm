
package Paws::EKS::DescribeInsightResponse;
  use Moose;
  has Insight => (is => 'ro', isa => 'Paws::EKS::Insight', traits => ['NameInRequest'], request_name => 'insight');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeInsightResponse

=head1 ATTRIBUTES


=head2 Insight => L<Paws::EKS::Insight>

The full description of the insight.


=head2 _request_id => Str


=cut

