
package Paws::WorkSpacesWeb::AssociateNetworkSettings;
  use Moose;
  has NetworkSettingsArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'networkSettingsArn', required => 1);
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'portalArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateNetworkSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals/{portalArn+}/networkSettings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::AssociateNetworkSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::AssociateNetworkSettings - Arguments for method AssociateNetworkSettings on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateNetworkSettings on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method AssociateNetworkSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateNetworkSettings.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $AssociateNetworkSettingsResponse =
      $workspaces -web->AssociateNetworkSettings(
      NetworkSettingsArn => 'MyARN',
      PortalArn          => 'MyARN',

      );

    # Results:
    my $NetworkSettingsArn =
      $AssociateNetworkSettingsResponse->NetworkSettingsArn;
    my $PortalArn = $AssociateNetworkSettingsResponse->PortalArn;

    # Returns a L<Paws::WorkSpacesWeb::AssociateNetworkSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/AssociateNetworkSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkSettingsArn => Str

The ARN of the network settings.



=head2 B<REQUIRED> PortalArn => Str

The ARN of the web portal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateNetworkSettings in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

