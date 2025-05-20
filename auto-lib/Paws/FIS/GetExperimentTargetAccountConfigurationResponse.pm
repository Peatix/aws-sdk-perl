
package Paws::FIS::GetExperimentTargetAccountConfigurationResponse;
  use Moose;
  has TargetAccountConfiguration => (is => 'ro', isa => 'Paws::FIS::ExperimentTargetAccountConfiguration', traits => ['NameInRequest'], request_name => 'targetAccountConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::GetExperimentTargetAccountConfigurationResponse

=head1 ATTRIBUTES


=head2 TargetAccountConfiguration => L<Paws::FIS::ExperimentTargetAccountConfiguration>

Information about the target account configuration.


=head2 _request_id => Str


=cut

