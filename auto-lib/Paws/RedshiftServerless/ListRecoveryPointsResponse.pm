
package Paws::RedshiftServerless::ListRecoveryPointsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RecoveryPoints => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::RecoveryPoint]', traits => ['NameInRequest'], request_name => 'recoveryPoints' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListRecoveryPointsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 RecoveryPoints => ArrayRef[L<Paws::RedshiftServerless::RecoveryPoint>]

The returned recovery point objects.


=head2 _request_id => Str


=cut

1;