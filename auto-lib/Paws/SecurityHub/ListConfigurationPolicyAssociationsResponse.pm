
package Paws::SecurityHub::ListConfigurationPolicyAssociationsResponse;
  use Moose;
  has ConfigurationPolicyAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::ConfigurationPolicyAssociationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListConfigurationPolicyAssociationsResponse

=head1 ATTRIBUTES


=head2 ConfigurationPolicyAssociationSummaries => ArrayRef[L<Paws::SecurityHub::ConfigurationPolicyAssociationSummary>]

An object that contains the details of each configuration policy
association thatE<rsquo>s returned in a
C<ListConfigurationPolicyAssociations> request.


=head2 NextToken => Str

The C<NextToken> value to include in the next
C<ListConfigurationPolicyAssociations> request. When the results of a
C<ListConfigurationPolicyAssociations> request exceed C<MaxResults>,
this value can be used to retrieve the next page of results. This value
is C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

