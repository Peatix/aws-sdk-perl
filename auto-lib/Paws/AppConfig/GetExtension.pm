
package Paws::AppConfig::GetExtension;
  use Moose;
  has ExtensionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ExtensionIdentifier', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'version_number');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExtension');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/extensions/{ExtensionIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Extension');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::GetExtension - Arguments for method GetExtension on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExtension on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method GetExtension.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExtension.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $Extension = $appconfig->GetExtension(
      ExtensionIdentifier => 'MyIdentifier',
      VersionNumber       => 1,                # OPTIONAL
    );

    # Results:
    my $Actions       = $Extension->Actions;
    my $Arn           = $Extension->Arn;
    my $Description   = $Extension->Description;
    my $Id            = $Extension->Id;
    my $Name          = $Extension->Name;
    my $Parameters    = $Extension->Parameters;
    my $VersionNumber = $Extension->VersionNumber;

    # Returns a L<Paws::AppConfig::Extension> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/GetExtension>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExtensionIdentifier => Str

The name, the ID, or the Amazon Resource Name (ARN) of the extension.



=head2 VersionNumber => Int

The extension version number. If no version number was defined,
AppConfig uses the highest version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExtension in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

