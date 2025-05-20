
package Paws::XRay::UpdateIndexingRuleResult;
  use Moose;
  has IndexingRule => (is => 'ro', isa => 'Paws::XRay::IndexingRule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::UpdateIndexingRuleResult

=head1 ATTRIBUTES


=head2 IndexingRule => L<Paws::XRay::IndexingRule>

Updated indexing rule.


=head2 _request_id => Str


=cut

