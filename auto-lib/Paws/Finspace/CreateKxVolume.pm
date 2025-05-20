
package Paws::Finspace::CreateKxVolume;
  use Moose;
  has AvailabilityZoneIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'availabilityZoneIds', required => 1);
  has AzMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'azMode', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has Nas1Configuration => (is => 'ro', isa => 'Paws::Finspace::KxNAS1Configuration', traits => ['NameInRequest'], request_name => 'nas1Configuration');
  has Tags => (is => 'ro', isa => 'Paws::Finspace::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VolumeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'volumeName', required => 1);
  has VolumeType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'volumeType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKxVolume');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/kxvolumes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::CreateKxVolumeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateKxVolume - Arguments for method CreateKxVolume on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKxVolume on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method CreateKxVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKxVolume.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $CreateKxVolumeResponse = $finspace->CreateKxVolume(
      AvailabilityZoneIds => [
        'MyAvailabilityZoneId', ...    # min: 8, max: 12
      ],
      AzMode            => 'SINGLE',
      EnvironmentId     => 'MyKxEnvironmentId',
      VolumeName        => 'MyKxVolumeName',
      VolumeType        => 'NAS_1',
      ClientToken       => 'MyClientToken',       # OPTIONAL
      Description       => 'MyDescription',       # OPTIONAL
      Nas1Configuration => {
        Size => 1,             # min: 1200; OPTIONAL
        Type => 'SSD_1000',    # values: SSD_1000, SSD_250, HDD_12; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AvailabilityZoneIds = $CreateKxVolumeResponse->AvailabilityZoneIds;
    my $AzMode              = $CreateKxVolumeResponse->AzMode;
    my $CreatedTimestamp    = $CreateKxVolumeResponse->CreatedTimestamp;
    my $Description         = $CreateKxVolumeResponse->Description;
    my $EnvironmentId       = $CreateKxVolumeResponse->EnvironmentId;
    my $Nas1Configuration   = $CreateKxVolumeResponse->Nas1Configuration;
    my $Status              = $CreateKxVolumeResponse->Status;
    my $StatusReason        = $CreateKxVolumeResponse->StatusReason;
    my $VolumeArn           = $CreateKxVolumeResponse->VolumeArn;
    my $VolumeName          = $CreateKxVolumeResponse->VolumeName;
    my $VolumeType          = $CreateKxVolumeResponse->VolumeType;

    # Returns a L<Paws::Finspace::CreateKxVolumeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/CreateKxVolume>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZoneIds => ArrayRef[Str|Undef]

The identifier of the availability zones.



=head2 B<REQUIRED> AzMode => Str

The number of availability zones you want to assign per volume.
Currently, FinSpace only supports C<SINGLE> for volumes. This places
dataview in a single AZ.

Valid values are: C<"SINGLE">, C<"MULTI">

=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 Description => Str

A description of the volume.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment, whose clusters can attach
to the volume.



=head2 Nas1Configuration => L<Paws::Finspace::KxNAS1Configuration>

Specifies the configuration for the Network attached storage (NAS_1)
file system volume. This parameter is required when you choose
C<volumeType> as I<NAS_1>.



=head2 Tags => L<Paws::Finspace::TagMap>

A list of key-value pairs to label the volume. You can add up to 50
tags to a volume.



=head2 B<REQUIRED> VolumeName => Str

A unique identifier for the volume.



=head2 B<REQUIRED> VolumeType => Str

The type of file system volume. Currently, FinSpace only supports
C<NAS_1> volume type. When you select C<NAS_1> volume type, you must
also provide C<nas1Configuration>.

Valid values are: C<"NAS_1">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKxVolume in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

