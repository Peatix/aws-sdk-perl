
package Paws::RedshiftServerless::RestoreFromRecoveryPointResponse;
  use Moose;
  has Namespace => (is => 'ro', isa => 'Paws::RedshiftServerless::Namespace', traits => ['NameInRequest'], request_name => 'namespace' );
  has RecoveryPointId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryPointId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::RestoreFromRecoveryPointResponse

=head1 ATTRIBUTES


=head2 Namespace => L<Paws::RedshiftServerless::Namespace>

The namespace that data was restored into.


=head2 RecoveryPointId => Str

The unique identifier of the recovery point used for the restore.


=head2 _request_id => Str


=cut

1;