
package Paws::AppConfig::UpdateExtensionAssociation;
  use Moose;
  has ExtensionAssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ExtensionAssociationId', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::AppConfig::ParameterValueMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateExtensionAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/extensionassociations/{ExtensionAssociationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::ExtensionAssociation');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::UpdateExtensionAssociation - Arguments for method UpdateExtensionAssociation on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateExtensionAssociation on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method UpdateExtensionAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateExtensionAssociation.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $ExtensionAssociation = $appconfig->UpdateExtensionAssociation(
      ExtensionAssociationId => 'MyId',
      Parameters             => {
        'MyExtensionOrParameterName' =>
          'MyStringWithLengthBetween1And2048',    # , value: min: 1, max: 2048
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/UpdateExtensionAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExtensionAssociationId => Str

The system-generated ID for the association.



=head2 Parameters => L<Paws::AppConfig::ParameterValueMap>

The parameter names and values defined in the extension.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateExtensionAssociation in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

