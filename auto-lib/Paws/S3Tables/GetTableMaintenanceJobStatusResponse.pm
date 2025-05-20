
package Paws::S3Tables::GetTableMaintenanceJobStatusResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::S3Tables::TableMaintenanceJobStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has TableARN => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableARN', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetTableMaintenanceJobStatusResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => L<Paws::S3Tables::TableMaintenanceJobStatus>

The status of the maintenance job.


=head2 B<REQUIRED> TableARN => Str

The Amazon Resource Name (ARN) of the table.


=head2 _request_id => Str


=cut

