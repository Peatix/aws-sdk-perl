
package Paws::WorkSpacesWeb::AssociateBrowserSettings;
  use Moose;
  has BrowserSettingsArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'browserSettingsArn', required => 1);
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'portalArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateBrowserSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals/{portalArn+}/browserSettings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::AssociateBrowserSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::AssociateBrowserSettings - Arguments for method AssociateBrowserSettings on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateBrowserSettings on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method AssociateBrowserSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateBrowserSettings.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $AssociateBrowserSettingsResponse =
      $workspaces -web->AssociateBrowserSettings(
      BrowserSettingsArn => 'MyARN',
      PortalArn          => 'MyARN',

      );

    # Results:
    my $BrowserSettingsArn =
      $AssociateBrowserSettingsResponse->BrowserSettingsArn;
    my $PortalArn = $AssociateBrowserSettingsResponse->PortalArn;

    # Returns a L<Paws::WorkSpacesWeb::AssociateBrowserSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/AssociateBrowserSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrowserSettingsArn => Str

The ARN of the browser settings.



=head2 B<REQUIRED> PortalArn => Str

The ARN of the web portal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateBrowserSettings in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

