
package Paws::CodeCatalyst::GetSourceRepository;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSourceRepository');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::GetSourceRepositoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetSourceRepository - Arguments for method GetSourceRepository on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSourceRepository on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method GetSourceRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSourceRepository.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $GetSourceRepositoryResponse = $codecatalyst->GetSourceRepository(
      Name        => 'MySourceRepositoryNameString',
      ProjectName => 'MyNameString',
      SpaceName   => 'MyNameString',

    );

    # Results:
    my $CreatedTime     = $GetSourceRepositoryResponse->CreatedTime;
    my $Description     = $GetSourceRepositoryResponse->Description;
    my $LastUpdatedTime = $GetSourceRepositoryResponse->LastUpdatedTime;
    my $Name            = $GetSourceRepositoryResponse->Name;
    my $ProjectName     = $GetSourceRepositoryResponse->ProjectName;
    my $SpaceName       = $GetSourceRepositoryResponse->SpaceName;

    # Returns a L<Paws::CodeCatalyst::GetSourceRepositoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/GetSourceRepository>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the source repository.



=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSourceRepository in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

