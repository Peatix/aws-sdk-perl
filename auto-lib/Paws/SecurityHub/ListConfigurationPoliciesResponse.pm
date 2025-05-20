
package Paws::SecurityHub::ListConfigurationPoliciesResponse;
  use Moose;
  has ConfigurationPolicySummaries => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::ConfigurationPolicySummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListConfigurationPoliciesResponse

=head1 ATTRIBUTES


=head2 ConfigurationPolicySummaries => ArrayRef[L<Paws::SecurityHub::ConfigurationPolicySummary>]

Provides metadata for each of your configuration policies.


=head2 NextToken => Str

The C<NextToken> value to include in the next
C<ListConfigurationPolicies> request. When the results of a
C<ListConfigurationPolicies> request exceed C<MaxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

