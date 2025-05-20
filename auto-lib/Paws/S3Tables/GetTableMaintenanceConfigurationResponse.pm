
package Paws::S3Tables::GetTableMaintenanceConfigurationResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::S3Tables::TableMaintenanceConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has TableARN => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableARN', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetTableMaintenanceConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::S3Tables::TableMaintenanceConfiguration>

Details about the maintenance configuration for the table bucket.


=head2 B<REQUIRED> TableARN => Str

The Amazon Resource Name (ARN) of the table.


=head2 _request_id => Str


=cut

