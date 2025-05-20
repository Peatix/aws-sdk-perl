
package Paws::RDS::DeleteDBClusterAutomatedBackupResult;
  use Moose;
  has DBClusterAutomatedBackup => (is => 'ro', isa => 'Paws::RDS::DBClusterAutomatedBackup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBClusterAutomatedBackupResult

=head1 ATTRIBUTES


=head2 DBClusterAutomatedBackup => L<Paws::RDS::DBClusterAutomatedBackup>




=head2 _request_id => Str


=cut

