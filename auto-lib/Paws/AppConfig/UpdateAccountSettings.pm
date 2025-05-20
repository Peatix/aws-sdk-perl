
package Paws::AppConfig::UpdateAccountSettings;
  use Moose;
  has DeletionProtection => (is => 'ro', isa => 'Paws::AppConfig::DeletionProtectionSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::AccountSettings');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::UpdateAccountSettings - Arguments for method UpdateAccountSettings on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountSettings on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method UpdateAccountSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountSettings.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $AccountSettings = $appconfig->UpdateAccountSettings(
      DeletionProtection => {
        Enabled                   => 1,    # OPTIONAL
        ProtectionPeriodInMinutes => 1,    # min: 15, max: 1440; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DeletionProtection = $AccountSettings->DeletionProtection;

    # Returns a L<Paws::AppConfig::AccountSettings> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/UpdateAccountSettings>

=head1 ATTRIBUTES


=head2 DeletionProtection => L<Paws::AppConfig::DeletionProtectionSettings>

A parameter to configure deletion protection. Deletion protection
prevents a user from deleting a configuration profile or an environment
if AppConfig has called either GetLatestConfiguration
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html)
or for the configuration profile or from the environment during the
specified interval. The default interval for
C<ProtectionPeriodInMinutes> is 60.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountSettings in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

