
package Paws::SecurityHub::BatchGetConfigurationPolicyAssociationsResponse;
  use Moose;
  has ConfigurationPolicyAssociations => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::ConfigurationPolicyAssociationSummary]');
  has UnprocessedConfigurationPolicyAssociations => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::UnprocessedConfigurationPolicyAssociation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchGetConfigurationPolicyAssociationsResponse

=head1 ATTRIBUTES


=head2 ConfigurationPolicyAssociations => ArrayRef[L<Paws::SecurityHub::ConfigurationPolicyAssociationSummary>]

Describes associations for the target accounts, OUs, or the root.


=head2 UnprocessedConfigurationPolicyAssociations => ArrayRef[L<Paws::SecurityHub::UnprocessedConfigurationPolicyAssociation>]

An array of configuration policy associations, one for each
configuration policy association identifier, that was specified in the
request but couldnE<rsquo>t be processed due to an error.


=head2 _request_id => Str


=cut

