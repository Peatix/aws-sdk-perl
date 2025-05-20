
package Paws::RDS::DBClusterAutomatedBackupMessage;
  use Moose;
  has DBClusterAutomatedBackups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBClusterAutomatedBackup]', request_name => 'DBClusterAutomatedBackup', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterAutomatedBackupMessage

=head1 ATTRIBUTES


=head2 DBClusterAutomatedBackups => ArrayRef[L<Paws::RDS::DBClusterAutomatedBackup>]

A list of C<DBClusterAutomatedBackup> backups.


=head2 Marker => Str

The pagination token provided in the previous request. If this
parameter is specified the response includes only records beyond the
marker, up to C<MaxRecords>.


=head2 _request_id => Str


=cut

