
package Paws::S3Tables::PutTableMaintenanceConfiguration;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'namespace', required => 1);
  has TableBucketARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableBucketARN', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'type', required => 1);
  has Value => (is => 'ro', isa => 'Paws::S3Tables::TableMaintenanceConfigurationValue', traits => ['NameInRequest'], request_name => 'value', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutTableMaintenanceConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tables/{tableBucketARN}/{namespace}/{name}/maintenance/{type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::PutTableMaintenanceConfiguration - Arguments for method PutTableMaintenanceConfiguration on L<Paws::S3Tables>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutTableMaintenanceConfiguration on the
L<Amazon S3 Tables|Paws::S3Tables> service. Use the attributes of this class
as arguments to method PutTableMaintenanceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutTableMaintenanceConfiguration.

=head1 SYNOPSIS

    my $s3tables = Paws->service('S3Tables');
    $s3tables->PutTableMaintenanceConfiguration(
      Name           => 'MyTableName',
      Namespace      => 'MyNamespaceName',
      TableBucketARN => 'MyTableBucketARN',
      Type           => 'icebergCompaction',
      Value          => {
        Settings => {
          IcebergCompaction => {
            TargetFileSizeMB => 1,    # min: 1, max: 2147483647; OPTIONAL
          },    # OPTIONAL
          IcebergSnapshotManagement => {
            MaxSnapshotAgeHours => 1,    # min: 1, max: 2147483647; OPTIONAL
            MinSnapshotsToKeep  => 1,    # min: 1, max: 2147483647; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Status => 'enabled',    # values: enabled, disabled; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3tables/PutTableMaintenanceConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the maintenance configuration.



=head2 B<REQUIRED> Namespace => Str

The namespace of the table.



=head2 B<REQUIRED> TableBucketARN => Str

The Amazon Resource Name (ARN) of the table associated with the
maintenance configuration.



=head2 B<REQUIRED> Type => Str

The type of the maintenance configuration.

Valid values are: C<"icebergCompaction">, C<"icebergSnapshotManagement">

=head2 B<REQUIRED> Value => L<Paws::S3Tables::TableMaintenanceConfigurationValue>

Defines the values of the maintenance configuration for the table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutTableMaintenanceConfiguration in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

