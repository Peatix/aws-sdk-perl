
package Paws::S3Tables::PutTableBucketMaintenanceConfiguration;
  use Moose;
  has TableBucketARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableBucketARN', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'type', required => 1);
  has Value => (is => 'ro', isa => 'Paws::S3Tables::TableBucketMaintenanceConfigurationValue', traits => ['NameInRequest'], request_name => 'value', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutTableBucketMaintenanceConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/buckets/{tableBucketARN}/maintenance/{type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::PutTableBucketMaintenanceConfiguration - Arguments for method PutTableBucketMaintenanceConfiguration on L<Paws::S3Tables>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutTableBucketMaintenanceConfiguration on the
L<Amazon S3 Tables|Paws::S3Tables> service. Use the attributes of this class
as arguments to method PutTableBucketMaintenanceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutTableBucketMaintenanceConfiguration.

=head1 SYNOPSIS

    my $s3tables = Paws->service('S3Tables');
    $s3tables->PutTableBucketMaintenanceConfiguration(
      TableBucketARN => 'MyTableBucketARN',
      Type           => 'icebergUnreferencedFileRemoval',
      Value          => {
        Settings => {
          IcebergUnreferencedFileRemoval => {
            NonCurrentDays   => 1,    # min: 1, max: 2147483647; OPTIONAL
            UnreferencedDays => 1,    # min: 1, max: 2147483647; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Status => 'enabled',    # values: enabled, disabled; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3tables/PutTableBucketMaintenanceConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TableBucketARN => Str

The Amazon Resource Name (ARN) of the table bucket associated with the
maintenance configuration.



=head2 B<REQUIRED> Type => Str

The type of the maintenance configuration.

Valid values are: C<"icebergUnreferencedFileRemoval">

=head2 B<REQUIRED> Value => L<Paws::S3Tables::TableBucketMaintenanceConfigurationValue>

Defines the values of the maintenance configuration for the table
bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutTableBucketMaintenanceConfiguration in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

