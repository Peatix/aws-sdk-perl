
package Paws::Drs::CreateLaunchConfigurationTemplateResponse;
  use Moose;
  has LaunchConfigurationTemplate => (is => 'ro', isa => 'Paws::Drs::LaunchConfigurationTemplate', traits => ['NameInRequest'], request_name => 'launchConfigurationTemplate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::CreateLaunchConfigurationTemplateResponse

=head1 ATTRIBUTES


=head2 LaunchConfigurationTemplate => L<Paws::Drs::LaunchConfigurationTemplate>

Created Launch Configuration Template.


=head2 _request_id => Str


=cut

