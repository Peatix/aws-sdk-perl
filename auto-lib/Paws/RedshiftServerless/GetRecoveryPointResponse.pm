
package Paws::RedshiftServerless::GetRecoveryPointResponse;
  use Moose;
  has RecoveryPoint => (is => 'ro', isa => 'Paws::RedshiftServerless::RecoveryPoint', traits => ['NameInRequest'], request_name => 'recoveryPoint' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetRecoveryPointResponse

=head1 ATTRIBUTES


=head2 RecoveryPoint => L<Paws::RedshiftServerless::RecoveryPoint>

The returned recovery point object.


=head2 _request_id => Str


=cut

1;