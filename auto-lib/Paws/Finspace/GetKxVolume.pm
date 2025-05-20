
package Paws::Finspace::GetKxVolume;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has VolumeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'volumeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKxVolume');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/kxvolumes/{volumeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::GetKxVolumeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxVolume - Arguments for method GetKxVolume on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKxVolume on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method GetKxVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKxVolume.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $GetKxVolumeResponse = $finspace->GetKxVolume(
      EnvironmentId => 'MyKxEnvironmentId',
      VolumeName    => 'MyKxVolumeName',

    );

    # Results:
    my $AttachedClusters      = $GetKxVolumeResponse->AttachedClusters;
    my $AvailabilityZoneIds   = $GetKxVolumeResponse->AvailabilityZoneIds;
    my $AzMode                = $GetKxVolumeResponse->AzMode;
    my $CreatedTimestamp      = $GetKxVolumeResponse->CreatedTimestamp;
    my $Description           = $GetKxVolumeResponse->Description;
    my $EnvironmentId         = $GetKxVolumeResponse->EnvironmentId;
    my $LastModifiedTimestamp = $GetKxVolumeResponse->LastModifiedTimestamp;
    my $Nas1Configuration     = $GetKxVolumeResponse->Nas1Configuration;
    my $Status                = $GetKxVolumeResponse->Status;
    my $StatusReason          = $GetKxVolumeResponse->StatusReason;
    my $VolumeArn             = $GetKxVolumeResponse->VolumeArn;
    my $VolumeName            = $GetKxVolumeResponse->VolumeName;
    my $VolumeType            = $GetKxVolumeResponse->VolumeType;

    # Returns a L<Paws::Finspace::GetKxVolumeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/GetKxVolume>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment, whose clusters can attach
to the volume.



=head2 B<REQUIRED> VolumeName => Str

A unique identifier for the volume.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKxVolume in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

