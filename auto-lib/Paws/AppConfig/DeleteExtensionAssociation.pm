
package Paws::AppConfig::DeleteExtensionAssociation;
  use Moose;
  has ExtensionAssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ExtensionAssociationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteExtensionAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/extensionassociations/{ExtensionAssociationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::DeleteExtensionAssociation - Arguments for method DeleteExtensionAssociation on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteExtensionAssociation on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method DeleteExtensionAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteExtensionAssociation.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    $appconfig->DeleteExtensionAssociation(
      ExtensionAssociationId => 'MyId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/DeleteExtensionAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExtensionAssociationId => Str

The ID of the extension association to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteExtensionAssociation in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

