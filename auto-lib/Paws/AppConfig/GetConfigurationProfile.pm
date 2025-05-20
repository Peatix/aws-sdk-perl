
package Paws::AppConfig::GetConfigurationProfile;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has ConfigurationProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationProfileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfigurationProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::ConfigurationProfile');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::GetConfigurationProfile - Arguments for method GetConfigurationProfile on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfigurationProfile on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method GetConfigurationProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfigurationProfile.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    # To retrieve configuration profile details
    # The following get-configuration-profile example returns the details of the
    # specified configuration profile.
    my $ConfigurationProfile = $appconfig->GetConfigurationProfile(
      'ApplicationId'          => '339ohji',
      'ConfigurationProfileId' => 'ur8hx2f'
    );

    # Results:
    my $ApplicationId    = $ConfigurationProfile->ApplicationId;
    my $Id               = $ConfigurationProfile->Id;
    my $LocationUri      = $ConfigurationProfile->LocationUri;
    my $Name             = $ConfigurationProfile->Name;
    my $RetrievalRoleArn = $ConfigurationProfile->RetrievalRoleArn;

    # Returns a L<Paws::AppConfig::ConfigurationProfile> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/GetConfigurationProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application that includes the configuration profile you
want to get.



=head2 B<REQUIRED> ConfigurationProfileId => Str

The ID of the configuration profile that you want to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfigurationProfile in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

