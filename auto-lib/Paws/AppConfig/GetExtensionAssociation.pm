
package Paws::AppConfig::GetExtensionAssociation;
  use Moose;
  has ExtensionAssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ExtensionAssociationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExtensionAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/extensionassociations/{ExtensionAssociationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::ExtensionAssociation');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::GetExtensionAssociation - Arguments for method GetExtensionAssociation on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExtensionAssociation on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method GetExtensionAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExtensionAssociation.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $ExtensionAssociation = $appconfig->GetExtensionAssociation(
      ExtensionAssociationId => 'MyId',

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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/GetExtensionAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExtensionAssociationId => Str

The extension association ID to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExtensionAssociation in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

