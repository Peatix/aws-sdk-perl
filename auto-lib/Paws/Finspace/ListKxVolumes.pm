
package Paws::Finspace::ListKxVolumes;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has VolumeType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'volumeType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListKxVolumes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/kxvolumes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::ListKxVolumesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxVolumes - Arguments for method ListKxVolumes on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListKxVolumes on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method ListKxVolumes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListKxVolumes.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $ListKxVolumesResponse = $finspace->ListKxVolumes(
      EnvironmentId => 'MyKxEnvironmentId',
      MaxResults    => 1,                      # OPTIONAL
      NextToken     => 'MyPaginationToken',    # OPTIONAL
      VolumeType    => 'NAS_1',                # OPTIONAL
    );

    # Results:
    my $KxVolumeSummaries = $ListKxVolumesResponse->KxVolumeSummaries;
    my $NextToken         = $ListKxVolumesResponse->NextToken;

    # Returns a L<Paws::Finspace::ListKxVolumesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/ListKxVolumes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment, whose clusters can attach
to the volume.



=head2 MaxResults => Int

The maximum number of results to return in this request.



=head2 NextToken => Str

A token that indicates where a results page should begin.



=head2 VolumeType => Str

The type of file system volume. Currently, FinSpace only supports
C<NAS_1> volume type.

Valid values are: C<"NAS_1">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListKxVolumes in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

