
package Paws::AppConfig::CreateExtensionAssociation;
  use Moose;
  has ExtensionIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ExtensionVersionNumber => (is => 'ro', isa => 'Int');
  has Parameters => (is => 'ro', isa => 'Paws::AppConfig::ParameterValueMap');
  has ResourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppConfig::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExtensionAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/extensionassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::ExtensionAssociation');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::CreateExtensionAssociation - Arguments for method CreateExtensionAssociation on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExtensionAssociation on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method CreateExtensionAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExtensionAssociation.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $ExtensionAssociation = $appconfig->CreateExtensionAssociation(
      ExtensionIdentifier    => 'MyIdentifier',
      ResourceIdentifier     => 'MyIdentifier',
      ExtensionVersionNumber => 1,                # OPTIONAL
      Parameters             => {
        'MyExtensionOrParameterName' =>
          'MyStringWithLengthBetween1And2048',    # , value: min: 1, max: 2048
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn                    = $ExtensionAssociation->Arn;
    my $ExtensionArn           = $ExtensionAssociation->ExtensionArn;
    my $ExtensionVersionNumber = $ExtensionAssociation->ExtensionVersionNumber;
    my $Id                     = $ExtensionAssociation->Id;
    my $Parameters             = $ExtensionAssociation->Parameters;
    my $ResourceArn            = $ExtensionAssociation->ResourceArn;

    # Returns a L<Paws::AppConfig::ExtensionAssociation> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/CreateExtensionAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExtensionIdentifier => Str

The name, the ID, or the Amazon Resource Name (ARN) of the extension.



=head2 ExtensionVersionNumber => Int

The version number of the extension. If not specified, AppConfig uses
the maximum version of the extension.



=head2 Parameters => L<Paws::AppConfig::ParameterValueMap>

The parameter names and values defined in the extensions. Extension
parameters marked C<Required> must be entered for this field.



=head2 B<REQUIRED> ResourceIdentifier => Str

The ARN of an application, configuration profile, or environment.



=head2 Tags => L<Paws::AppConfig::TagMap>

Adds one or more tags for the specified extension association. Tags are
metadata that help you categorize resources in different ways, for
example, by purpose, owner, or environment. Each tag consists of a key
and an optional value, both of which you define.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExtensionAssociation in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

