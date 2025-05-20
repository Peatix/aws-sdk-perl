
package Paws::AppConfig::CreateExtension;
  use Moose;
  has Actions => (is => 'ro', isa => 'Paws::AppConfig::ActionsMap', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has LatestVersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'Latest-Version-Number');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::AppConfig::ParameterMap');
  has Tags => (is => 'ro', isa => 'Paws::AppConfig::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExtension');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/extensions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Extension');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::CreateExtension - Arguments for method CreateExtension on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExtension on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method CreateExtension.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExtension.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $Extension = $appconfig->CreateExtension(
      Actions => {
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
      },
      Name                => 'MyExtensionOrParameterName',
      Description         => 'MyDescription',                # OPTIONAL
      LatestVersionNumber => 1,                              # OPTIONAL
      Parameters          => {
        'MyExtensionOrParameterName' => {
          Description => 'MyDescription',    # max: 1024; OPTIONAL
          Dynamic     => 1,                  # OPTIONAL
          Required    => 1,                  # OPTIONAL
        },
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/CreateExtension>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => L<Paws::AppConfig::ActionsMap>

The actions defined in the extension.



=head2 Description => Str

Information about the extension.



=head2 LatestVersionNumber => Int

You can omit this field when you create an extension. When you create a
new version, specify the most recent current version number. For
example, you create version 3, enter 2 for this field.



=head2 B<REQUIRED> Name => Str

A name for the extension. Each extension name in your account must be
unique. Extension versions use the same name.



=head2 Parameters => L<Paws::AppConfig::ParameterMap>

The parameters accepted by the extension. You specify parameter values
when you associate the extension to an AppConfig resource by using the
C<CreateExtensionAssociation> API action. For Lambda extension actions,
these parameters are included in the Lambda request object.



=head2 Tags => L<Paws::AppConfig::TagMap>

Adds one or more tags for the specified extension. Tags are metadata
that help you categorize resources in different ways, for example, by
purpose, owner, or environment. Each tag consists of a key and an
optional value, both of which you define.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExtension in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

