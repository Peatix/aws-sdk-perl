
package Paws::Connect::DescribeRuleResponse;
  use Moose;
  has Rule => (is => 'ro', isa => 'Paws::Connect::Rule', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeRuleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Rule => L<Paws::Connect::Rule>

Information about the rule.


=head2 _request_id => Str


=cut

