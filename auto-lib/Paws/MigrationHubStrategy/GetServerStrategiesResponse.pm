
package Paws::MigrationHubStrategy::GetServerStrategiesResponse;
  use Moose;
  has ServerStrategies => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::ServerStrategy]', traits => ['NameInRequest'], request_name => 'serverStrategies');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetServerStrategiesResponse

=head1 ATTRIBUTES


=head2 ServerStrategies => ArrayRef[L<Paws::MigrationHubStrategy::ServerStrategy>]

A list of strategy recommendations for the server.


=head2 _request_id => Str


=cut

