
package Paws::AppConfig::UpdateExtension;
  use Moose;
  has Actions => (is => 'ro', isa => 'Paws::AppConfig::ActionsMap');
  has Description => (is => 'ro', isa => 'Str');
  has ExtensionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ExtensionIdentifier', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::AppConfig::ParameterMap');
  has VersionNumber => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateExtension');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/extensions/{ExtensionIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Extension');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::UpdateExtension - Arguments for method UpdateExtension on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateExtension on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method UpdateExtension.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateExtension.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $Extension = $appconfig->UpdateExtension(
      ExtensionIdentifier => 'MyIdentifier',
      Actions             => {
        'PRE_CREATE_HOSTED_CONFIGURATION_VERSION' => [
          {
            Description => 'MyDescription',    # max: 1024; OPTIONAL
            Name        => 'MyName',           # min: 1, max: 64; OPTIONAL
            RoleArn     => 'MyArn',            # min: 20, max: 2048; OPTIONAL
            Uri         => 'MyUri',            # min: 1, max: 2048; OPTIONAL
          },
          ...
          ]
        , # key: values: PRE_CREATE_HOSTED_CONFIGURATION_VERSION, PRE_START_DEPLOYMENT, AT_DEPLOYMENT_TICK, ON_DEPLOYMENT_START, ON_DEPLOYMENT_STEP, ON_DEPLOYMENT_BAKING, ON_DEPLOYMENT_COMPLETE, ON_DEPLOYMENT_ROLLED_BACK, value: min: 1, max: 1
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      Parameters  => {
        'MyExtensionOrParameterName' => {
          Description => 'MyDescription',    # max: 1024; OPTIONAL
          Dynamic     => 1,                  # OPTIONAL
          Required    => 1,                  # OPTIONAL
        },
      },    # OPTIONAL
      VersionNumber => 1,    # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/UpdateExtension>

=head1 ATTRIBUTES


=head2 Actions => L<Paws::AppConfig::ActionsMap>

The actions defined in the extension.



=head2 Description => Str

Information about the extension.



=head2 B<REQUIRED> ExtensionIdentifier => Str

The name, the ID, or the Amazon Resource Name (ARN) of the extension.



=head2 Parameters => L<Paws::AppConfig::ParameterMap>

One or more parameters for the actions called by the extension.



=head2 VersionNumber => Int

The extension version number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateExtension in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

