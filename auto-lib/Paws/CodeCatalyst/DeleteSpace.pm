
package Paws::CodeCatalyst::DeleteSpace;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSpace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::DeleteSpaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::DeleteSpace - Arguments for method DeleteSpace on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSpace on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method DeleteSpace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSpace.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $DeleteSpaceResponse = $codecatalyst->DeleteSpace(
      Name => 'MyNameString',

    );

    # Results:
    my $DisplayName = $DeleteSpaceResponse->DisplayName;
    my $Name        = $DeleteSpaceResponse->Name;

    # Returns a L<Paws::CodeCatalyst::DeleteSpaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/DeleteSpace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the space. To retrieve a list of space names, use
ListSpaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSpace in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

