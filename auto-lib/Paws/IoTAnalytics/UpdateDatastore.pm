
package Paws::IoTAnalytics::UpdateDatastore;
  use Moose;
  has DatastoreName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datastoreName', required => 1);
  has DatastoreStorage => (is => 'ro', isa => 'Paws::IoTAnalytics::DatastoreStorage', traits => ['NameInRequest'], request_name => 'datastoreStorage');
  has FileFormatConfiguration => (is => 'ro', isa => 'Paws::IoTAnalytics::FileFormatConfiguration', traits => ['NameInRequest'], request_name => 'fileFormatConfiguration');
  has RetentionPeriod => (is => 'ro', isa => 'Paws::IoTAnalytics::RetentionPeriod', traits => ['NameInRequest'], request_name => 'retentionPeriod');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDatastore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastores/{datastoreName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::UpdateDatastore - Arguments for method UpdateDatastore on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDatastore on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method UpdateDatastore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDatastore.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    $iotanalytics->UpdateDatastore(
      DatastoreName    => 'MyDatastoreName',
      DatastoreStorage => {
        CustomerManagedS3 => {
          Bucket    => 'MyBucketName',     # min: 3, max: 255
          RoleArn   => 'MyRoleArn',        # min: 20, max: 2048
          KeyPrefix => 'MyS3KeyPrefix',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        IotSiteWiseMultiLayerStorage => {
          CustomerManagedS3Storage => {
            Bucket    => 'MyBucketName',     # min: 3, max: 255
            KeyPrefix => 'MyS3KeyPrefix',    # min: 1, max: 255; OPTIONAL
          },

        },    # OPTIONAL
        ServiceManagedS3 => {

        },    # OPTIONAL
      },    # OPTIONAL
      FileFormatConfiguration => {
        JsonConfiguration => {

        },    # OPTIONAL
        ParquetConfiguration => {
          SchemaDefinition => {
            Columns => [
              {
                Name => 'MyColumnName',        # min: 1, max: 255
                Type => 'MyColumnDataType',    # min: 1, max: 131072

              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      RetentionPeriod => {
        NumberOfDays => 1,    # min: 1; OPTIONAL
        Unlimited    => 1,    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/UpdateDatastore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreName => Str

The name of the data store to be updated.



=head2 DatastoreStorage => L<Paws::IoTAnalytics::DatastoreStorage>

Where data in a data store is stored.. You can choose
C<serviceManagedS3> storage, C<customerManagedS3> storage, or
C<iotSiteWiseMultiLayerStorage> storage. The default is
C<serviceManagedS3>. You can't change the choice of Amazon S3 storage
after your data store is created.



=head2 FileFormatConfiguration => L<Paws::IoTAnalytics::FileFormatConfiguration>

Contains the configuration information of file formats. IoT Analytics
data stores support JSON and Parquet (https://parquet.apache.org/).

The default file format is JSON. You can specify only one format.

You can't change the file format after you create the data store.



=head2 RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>

How long, in days, message data is kept for the data store. The
retention period can't be updated if the data store's Amazon S3 storage
is customer-managed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDatastore in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

