
package Paws::CodeCatalyst::UpdateProject;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/projects/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::UpdateProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::UpdateProject - Arguments for method UpdateProject on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $UpdateProjectResponse = $codecatalyst->UpdateProject(
      Name        => 'MyNameString',
      SpaceName   => 'MyNameString',
      Description => 'MyProjectDescription',    # OPTIONAL
    );

    # Results:
    my $Description = $UpdateProjectResponse->Description;
    my $DisplayName = $UpdateProjectResponse->DisplayName;
    my $Name        = $UpdateProjectResponse->Name;
    my $SpaceName   = $UpdateProjectResponse->SpaceName;

    # Returns a L<Paws::CodeCatalyst::UpdateProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/UpdateProject>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the project.



=head2 B<REQUIRED> Name => Str

The name of the project.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

