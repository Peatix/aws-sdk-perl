
package Paws::CloudWatch::ListManagedInsightRulesOutput;
  use Moose;
  has ManagedRules => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::ManagedRuleDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::ListManagedInsightRulesOutput

=head1 ATTRIBUTES


=head2 ManagedRules => ArrayRef[L<Paws::CloudWatch::ManagedRuleDescription>]

The managed rules that are available for the specified Amazon Web
Services resource.


=head2 NextToken => Str

Include this value to get the next set of rules if the value was
returned by the previous operation.


=head2 _request_id => Str


=cut

