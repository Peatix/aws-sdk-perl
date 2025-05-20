
package Paws::CodeCatalyst::CreateProject;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/projects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::CreateProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::CreateProject - Arguments for method CreateProject on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $CreateProjectResponse = $codecatalyst->CreateProject(
      DisplayName => 'MyProjectDisplayName',
      SpaceName   => 'MyNameString',
      Description => 'MyProjectDescription',    # OPTIONAL
    );

    # Results:
    my $Description = $CreateProjectResponse->Description;
    my $DisplayName = $CreateProjectResponse->DisplayName;
    my $Name        = $CreateProjectResponse->Name;
    my $SpaceName   = $CreateProjectResponse->SpaceName;

    # Returns a L<Paws::CodeCatalyst::CreateProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/CreateProject>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the project. This description will be displayed to
all users of the project. We recommend providing a brief description of
the project and its intended purpose.



=head2 B<REQUIRED> DisplayName => Str

The friendly name of the project that will be displayed to users.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

