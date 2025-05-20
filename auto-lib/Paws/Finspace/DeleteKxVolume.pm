
package Paws::Finspace::DeleteKxVolume;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has VolumeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'volumeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKxVolume');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/kxvolumes/{volumeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::DeleteKxVolumeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::DeleteKxVolume - Arguments for method DeleteKxVolume on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteKxVolume on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method DeleteKxVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteKxVolume.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $DeleteKxVolumeResponse = $finspace->DeleteKxVolume(
      EnvironmentId => 'MyKxEnvironmentId',
      VolumeName    => 'MyKxVolumeName',
      ClientToken   => 'MyClientTokenString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/DeleteKxVolume>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment, whose clusters can attach
to the volume.



=head2 B<REQUIRED> VolumeName => Str

The name of the volume that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteKxVolume in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

