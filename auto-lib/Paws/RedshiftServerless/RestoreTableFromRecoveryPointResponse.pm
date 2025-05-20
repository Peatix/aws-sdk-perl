
package Paws::RedshiftServerless::RestoreTableFromRecoveryPointResponse;
  use Moose;
  has TableRestoreStatus => (is => 'ro', isa => 'Paws::RedshiftServerless::TableRestoreStatus', traits => ['NameInRequest'], request_name => 'tableRestoreStatus' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::RestoreTableFromRecoveryPointResponse

=head1 ATTRIBUTES


=head2 TableRestoreStatus => L<Paws::RedshiftServerless::TableRestoreStatus>




=head2 _request_id => Str


=cut

1;