
package Paws::MigrationHubStrategy::GetApplicationComponentStrategiesResponse;
  use Moose;
  has ApplicationComponentStrategies => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::ApplicationComponentStrategy]', traits => ['NameInRequest'], request_name => 'applicationComponentStrategies');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetApplicationComponentStrategiesResponse

=head1 ATTRIBUTES


=head2 ApplicationComponentStrategies => ArrayRef[L<Paws::MigrationHubStrategy::ApplicationComponentStrategy>]

A list of application component strategy recommendations.


=head2 _request_id => Str


=cut

