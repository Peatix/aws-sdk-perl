
package Paws::MigrationHubStrategy::GetPortfolioPreferencesResponse;
  use Moose;
  has ApplicationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationMode');
  has ApplicationPreferences => (is => 'ro', isa => 'Paws::MigrationHubStrategy::ApplicationPreferences', traits => ['NameInRequest'], request_name => 'applicationPreferences');
  has DatabasePreferences => (is => 'ro', isa => 'Paws::MigrationHubStrategy::DatabasePreferences', traits => ['NameInRequest'], request_name => 'databasePreferences');
  has PrioritizeBusinessGoals => (is => 'ro', isa => 'Paws::MigrationHubStrategy::PrioritizeBusinessGoals', traits => ['NameInRequest'], request_name => 'prioritizeBusinessGoals');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetPortfolioPreferencesResponse

=head1 ATTRIBUTES


=head2 ApplicationMode => Str

The classification for application component types.

Valid values are: C<"ALL">, C<"KNOWN">, C<"UNKNOWN">
=head2 ApplicationPreferences => L<Paws::MigrationHubStrategy::ApplicationPreferences>

The transformation preferences for non-database applications.


=head2 DatabasePreferences => L<Paws::MigrationHubStrategy::DatabasePreferences>

The transformation preferences for database applications.


=head2 PrioritizeBusinessGoals => L<Paws::MigrationHubStrategy::PrioritizeBusinessGoals>

The rank of business goals based on priority.


=head2 _request_id => Str


=cut

