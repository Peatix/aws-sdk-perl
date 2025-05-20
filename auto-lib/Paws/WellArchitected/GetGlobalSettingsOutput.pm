
package Paws::WellArchitected::GetGlobalSettingsOutput;
  use Moose;
  has DiscoveryIntegrationStatus => (is => 'ro', isa => 'Str');
  has JiraConfiguration => (is => 'ro', isa => 'Paws::WellArchitected::AccountJiraConfigurationOutput');
  has OrganizationSharingStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetGlobalSettingsOutput

=head1 ATTRIBUTES


=head2 DiscoveryIntegrationStatus => Str

Discovery integration status.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 JiraConfiguration => L<Paws::WellArchitected::AccountJiraConfigurationOutput>

Jira configuration status.


=head2 OrganizationSharingStatus => Str

Amazon Web Services Organizations sharing status.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

