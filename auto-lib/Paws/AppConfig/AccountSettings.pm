
package Paws::AppConfig::AccountSettings;
  use Moose;
  has DeletionProtection => (is => 'ro', isa => 'Paws::AppConfig::DeletionProtectionSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::AccountSettings

=head1 ATTRIBUTES


=head2 DeletionProtection => L<Paws::AppConfig::DeletionProtectionSettings>

A parameter to configure deletion protection. Deletion protection
prevents a user from deleting a configuration profile or an environment
if AppConfig has called either GetLatestConfiguration
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html)
or for the configuration profile or from the environment during the
specified interval. The default interval for
C<ProtectionPeriodInMinutes> is 60.


=head2 _request_id => Str


=cut

