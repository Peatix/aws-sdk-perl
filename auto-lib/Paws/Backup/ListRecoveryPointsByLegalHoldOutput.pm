
package Paws::Backup::ListRecoveryPointsByLegalHoldOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RecoveryPoints => (is => 'ro', isa => 'ArrayRef[Paws::Backup::RecoveryPointMember]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListRecoveryPointsByLegalHoldOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The next item following a partial list of returned resources.


=head2 RecoveryPoints => ArrayRef[L<Paws::Backup::RecoveryPointMember>]

The recovery points.


=head2 _request_id => Str


=cut

