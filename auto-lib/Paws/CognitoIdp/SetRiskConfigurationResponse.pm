
package Paws::CognitoIdp::SetRiskConfigurationResponse;
  use Moose;
  has RiskConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::RiskConfigurationType', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetRiskConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RiskConfiguration => L<Paws::CognitoIdp::RiskConfigurationType>

The API response that contains the risk configuration that you set and
the timestamp of the most recent change.


=head2 _request_id => Str


=cut

1;