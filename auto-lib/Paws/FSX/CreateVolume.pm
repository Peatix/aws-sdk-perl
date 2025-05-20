
package Paws::FSX::CreateVolume;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OntapConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateOntapVolumeConfiguration');
  has OpenZFSConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateOpenZFSVolumeConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has VolumeType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CreateVolumeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateVolume - Arguments for method CreateVolume on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVolume on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CreateVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVolume.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $CreateVolumeResponse = $fsx->CreateVolume(
      Name               => 'MyVolumeName',
      VolumeType         => 'ONTAP',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      OntapConfiguration => {
        StorageVirtualMachineId =>
          'MyStorageVirtualMachineId',                 # min: 21, max: 21
        AggregateConfiguration => {
          Aggregates => [
            'MyAggregate', ...                         # min: 5, max: 6
          ],    # max: 6; OPTIONAL
          ConstituentsPerAggregate => 1,    # min: 1, max: 200; OPTIONAL
        },    # OPTIONAL
        CopyTagsToBackups     => 1,                 # OPTIONAL
        JunctionPath          => 'MyJunctionPath',  # min: 1, max: 255; OPTIONAL
        OntapVolumeType       => 'RW',              # values: RW, DP; OPTIONAL
        SecurityStyle         => 'UNIX',   # values: UNIX, NTFS, MIXED; OPTIONAL
        SizeInBytes           => 1,        # max: 22517998000000000; OPTIONAL
        SizeInMegabytes       => 1,        # max: 2147483647; OPTIONAL
        SnaplockConfiguration => {
          SnaplockType     => 'COMPLIANCE',    # values: COMPLIANCE, ENTERPRISE
          AuditLogVolume   => 1,               # OPTIONAL
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
        VolumeStyle => 'FLEXVOL',    # values: FLEXVOL, FLEXGROUP; OPTIONAL
      },    # OPTIONAL
      OpenZFSConfiguration => {
        ParentVolumeId      => 'MyVolumeId', # min: 23, max: 23
        CopyTagsToSnapshots => 1,            # OPTIONAL
        DataCompressionType => 'NONE',       # values: NONE, ZSTD, LZ4; OPTIONAL
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
        OriginSnapshot => {
          CopyStrategy => 'CLONE',  # values: CLONE, FULL_COPY, INCREMENTAL_COPY
          SnapshotARN  => 'MyResourceARN',    # min: 8, max: 512

        },    # OPTIONAL
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
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Volume = $CreateVolumeResponse->Volume;

    # Returns a L<Paws::FSX::CreateVolumeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CreateVolume>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 B<REQUIRED> Name => Str

Specifies the name of the volume that you're creating.



=head2 OntapConfiguration => L<Paws::FSX::CreateOntapVolumeConfiguration>

Specifies the configuration to use when creating the ONTAP volume.



=head2 OpenZFSConfiguration => L<Paws::FSX::CreateOpenZFSVolumeConfiguration>

Specifies the configuration to use when creating the OpenZFS volume.



=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]





=head2 B<REQUIRED> VolumeType => Str

Specifies the type of volume to create; C<ONTAP> and C<OPENZFS> are the
only valid volume types.

Valid values are: C<"ONTAP">, C<"OPENZFS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVolume in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

