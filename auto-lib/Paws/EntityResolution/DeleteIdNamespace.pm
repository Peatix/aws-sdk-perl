
package Paws::EntityResolution::DeleteIdNamespace;
  use Moose;
  has IdNamespaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'idNamespaceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/idnamespaces/{idNamespaceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::DeleteIdNamespaceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::DeleteIdNamespace - Arguments for method DeleteIdNamespace on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIdNamespace on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method DeleteIdNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIdNamespace.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $DeleteIdNamespaceOutput = $entityresolution->DeleteIdNamespace(
      IdNamespaceName => 'MyEntityName',

    );

    # Results:
    my $Message = $DeleteIdNamespaceOutput->Message;

    # Returns a L<Paws::EntityResolution::DeleteIdNamespaceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/DeleteIdNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdNamespaceName => Str

The name of the ID namespace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIdNamespace in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

