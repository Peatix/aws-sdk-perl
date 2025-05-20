
package Paws::S3Tables::GetTableBucketMaintenanceConfigurationResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::S3Tables::TableBucketMaintenanceConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has TableBucketARN => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableBucketARN', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetTableBucketMaintenanceConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::S3Tables::TableBucketMaintenanceConfiguration>

Details about the maintenance configuration for the table bucket.


=head2 B<REQUIRED> TableBucketARN => Str

The Amazon Resource Name (ARN) of the table bucket associated with the
maintenance configuration.


=head2 _request_id => Str


=cut

