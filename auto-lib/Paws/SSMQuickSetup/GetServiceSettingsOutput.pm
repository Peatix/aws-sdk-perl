
package Paws::SSMQuickSetup::GetServiceSettingsOutput;
  use Moose;
  has ServiceSettings => (is => 'ro', isa => 'Paws::SSMQuickSetup::ServiceSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::GetServiceSettingsOutput

=head1 ATTRIBUTES


=head2 ServiceSettings => L<Paws::SSMQuickSetup::ServiceSettings>

Returns details about the settings for Quick Setup in the requesting
Amazon Web Services account and Amazon Web Services Region.


=head2 _request_id => Str


=cut

