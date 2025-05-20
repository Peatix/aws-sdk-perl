
package Paws::CodeCatalyst::UpdateSpace;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSpace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::UpdateSpaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::UpdateSpace - Arguments for method UpdateSpace on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSpace on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method UpdateSpace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSpace.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $UpdateSpaceResponse = $codecatalyst->UpdateSpace(
      Name        => 'MyNameString',
      Description => 'MySpaceDescription',    # OPTIONAL
    );

    # Results:
    my $Description = $UpdateSpaceResponse->Description;
    my $DisplayName = $UpdateSpaceResponse->DisplayName;
    my $Name        = $UpdateSpaceResponse->Name;

    # Returns a L<Paws::CodeCatalyst::UpdateSpaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/UpdateSpace>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the space.



=head2 B<REQUIRED> Name => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSpace in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

