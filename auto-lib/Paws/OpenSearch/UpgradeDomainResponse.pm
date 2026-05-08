
package Paws::OpenSearch::UpgradeDomainResponse;
  use Moose;
  has AdvancedOptions => (is => 'ro', isa => 'Paws::OpenSearch::AdvancedOptions');
  has ChangeProgressDetails => (is => 'ro', isa => 'Paws::OpenSearch::ChangeProgressDetails');
  has DomainName => (is => 'ro', isa => 'Str');
  has PerformCheckOnly => (is => 'ro', isa => 'Bool');
  has TargetVersion => (is => 'ro', isa => 'Str');
  has UpgradeId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpgradeDomainResponse

=head1 ATTRIBUTES


=head2 AdvancedOptions => L<Paws::OpenSearch::AdvancedOptions>

The advanced options configuration for the domain.


=head2 ChangeProgressDetails => L<Paws::OpenSearch::ChangeProgressDetails>

Container for information about a configuration change happening on a
domain.


=head2 DomainName => Str

The name of the domain that was upgraded.


=head2 PerformCheckOnly => Bool

When true, indicates that an upgrade eligibility check was performed.


=head2 TargetVersion => Str

OpenSearch or Elasticsearch version that the domain was upgraded to.


=head2 UpgradeId => Str

The unique identifier of the domain upgrade.


=head2 _request_id => Str


=cut

