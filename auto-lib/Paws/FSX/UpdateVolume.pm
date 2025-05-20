
package Paws::FSX::UpdateVolume;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OntapConfiguration => (is => 'ro', isa => 'Paws::FSX::UpdateOntapVolumeConfiguration');
  has OpenZFSConfiguration => (is => 'ro', isa => 'Paws::FSX::UpdateOpenZFSVolumeConfiguration');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::UpdateVolumeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateVolume - Arguments for method UpdateVolume on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVolume on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method UpdateVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVolume.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $UpdateVolumeResponse = $fsx->UpdateVolume(
      VolumeId           => 'MyVolumeId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Name               => 'MyVolumeName',            # OPTIONAL
      OntapConfiguration => {
        CopyTagsToBackups     => 1,                 # OPTIONAL
        JunctionPath          => 'MyJunctionPath',  # min: 1, max: 255; OPTIONAL
        SecurityStyle         => 'UNIX',   # values: UNIX, NTFS, MIXED; OPTIONAL
        SizeInBytes           => 1,        # max: 22517998000000000; OPTIONAL
        SizeInMegabytes       => 1,        # max: 2147483647; OPTIONAL
        SnaplockConfiguration => {
          AuditLogVolume   => 1,           # OPTIONAL
          AutocommitPeriod => {
            Type =>
              'MINUTES',    # values: MINUTES, HOURS, DAYS, MONTHS, YEARS, NONE
            Value => 1,     # min: 1, max: 65535; OPTIONAL
          },    # OPTIONAL
          PrivilegedDelete => 'DISABLED'
          ,     # values: DISABLED, ENABLED, PERMANENTLY_DISABLED; OPTIONAL
          RetentionPeriod => {
            DefaultRetention => {
              Type => 'SECONDS'
              , # values: SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
              Value => 1,    # max: 65535; OPTIONAL
            },
            MaximumRetention => {
              Type => 'SECONDS'
              , # values: SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
              Value => 1,    # max: 65535; OPTIONAL
            },
            MinimumRetention => {
              Type => 'SECONDS'
              , # values: SECONDS, MINUTES, HOURS, DAYS, MONTHS, YEARS, INFINITE, UNSPECIFIED
              Value => 1,    # max: 65535; OPTIONAL
            },

          },    # OPTIONAL
          VolumeAppendModeEnabled => 1,    # OPTIONAL
        },    # OPTIONAL
        SnapshotPolicy => 'MySnapshotPolicy',    # min: 1, max: 255; OPTIONAL
        StorageEfficiencyEnabled => 1,           # OPTIONAL
        TieringPolicy            => {
          CoolingPeriod => 1,                    # min: 2, max: 183; OPTIONAL
          Name          =>
            'SNAPSHOT_ONLY',  # values: SNAPSHOT_ONLY, AUTO, ALL, NONE; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      OpenZFSConfiguration => {
        DataCompressionType => 'NONE',    # values: NONE, ZSTD, LZ4; OPTIONAL
        NfsExports          => [
          {
            ClientConfigurations => [
              {
                Clients => 'MyOpenZFSClients',    # min: 1, max: 128
                Options => [
                  'MyOpenZFSNfsExportOption', ...    # min: 1, max: 128
                ],    # min: 1, max: 20

              },
              ...
            ],    # max: 25

          },
          ...
        ],    # max: 1; OPTIONAL
        ReadOnly                      => 1, # OPTIONAL
        RecordSizeKiB                 => 1, # min: 4, max: 4096; OPTIONAL
        StorageCapacityQuotaGiB       => 1, # min: -1, max: 2147483647; OPTIONAL
        StorageCapacityReservationGiB => 1, # min: -1, max: 2147483647; OPTIONAL
        UserAndGroupQuotas            => [
          {
            Id                      => 1,         # max: 2147483647
            StorageCapacityQuotaGiB => 1,         # max: 2147483647
            Type                    => 'USER',    # values: USER, GROUP

          },
          ...
        ],    # max: 500; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Volume = $UpdateVolumeResponse->Volume;

    # Returns a L<Paws::FSX::UpdateVolumeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/UpdateVolume>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 Name => Str

The name of the OpenZFS volume. OpenZFS root volumes are automatically
named C<FSX>. Child volume names must be unique among their parent
volume's children. The name of the volume is part of the mount string
for the OpenZFS volume.



=head2 OntapConfiguration => L<Paws::FSX::UpdateOntapVolumeConfiguration>

The configuration of the ONTAP volume that you are updating.



=head2 OpenZFSConfiguration => L<Paws::FSX::UpdateOpenZFSVolumeConfiguration>

The configuration of the OpenZFS volume that you are updating.



=head2 B<REQUIRED> VolumeId => Str

The ID of the volume that you want to update, in the format
C<fsvol-0123456789abcdef0>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVolume in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

