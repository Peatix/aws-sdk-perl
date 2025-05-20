
package Paws::Finspace::UpdateKxVolume;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has Nas1Configuration => (is => 'ro', isa => 'Paws::Finspace::KxNAS1Configuration', traits => ['NameInRequest'], request_name => 'nas1Configuration');
  has VolumeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'volumeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKxVolume');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/kxvolumes/{volumeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::UpdateKxVolumeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateKxVolume - Arguments for method UpdateKxVolume on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKxVolume on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method UpdateKxVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKxVolume.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $UpdateKxVolumeResponse = $finspace->UpdateKxVolume(
      EnvironmentId     => 'MyKxEnvironmentId',
      VolumeName        => 'MyKxVolumeName',
      ClientToken       => 'MyClientTokenString',    # OPTIONAL
      Description       => 'MyDescription',          # OPTIONAL
      Nas1Configuration => {
        Size => 1,             # min: 1200; OPTIONAL
        Type => 'SSD_1000',    # values: SSD_1000, SSD_250, HDD_12; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AttachedClusters      = $UpdateKxVolumeResponse->AttachedClusters;
    my $AvailabilityZoneIds   = $UpdateKxVolumeResponse->AvailabilityZoneIds;
    my $AzMode                = $UpdateKxVolumeResponse->AzMode;
    my $CreatedTimestamp      = $UpdateKxVolumeResponse->CreatedTimestamp;
    my $Description           = $UpdateKxVolumeResponse->Description;
    my $EnvironmentId         = $UpdateKxVolumeResponse->EnvironmentId;
    my $LastModifiedTimestamp = $UpdateKxVolumeResponse->LastModifiedTimestamp;
    my $Nas1Configuration     = $UpdateKxVolumeResponse->Nas1Configuration;
    my $Status                = $UpdateKxVolumeResponse->Status;
    my $StatusReason          = $UpdateKxVolumeResponse->StatusReason;
    my $VolumeArn             = $UpdateKxVolumeResponse->VolumeArn;
    my $VolumeName            = $UpdateKxVolumeResponse->VolumeName;
    my $VolumeType            = $UpdateKxVolumeResponse->VolumeType;

    # Returns a L<Paws::Finspace::UpdateKxVolumeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/UpdateKxVolume>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 Description => Str

A description of the volume.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment where you created the
storage volume.



=head2 Nas1Configuration => L<Paws::Finspace::KxNAS1Configuration>

Specifies the configuration for the Network attached storage (NAS_1)
file system volume.



=head2 B<REQUIRED> VolumeName => Str

A unique identifier for the volume.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKxVolume in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

