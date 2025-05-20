
package Paws::PCS::ListQueuesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Queues => (is => 'ro', isa => 'ArrayRef[Paws::PCS::QueueSummary]', traits => ['NameInRequest'], request_name => 'queues' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PCS::ListQueuesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The value of C<nextToken> is a unique pagination token for each page of
results returned. If C<nextToken> is returned, there are more results
available. Make the call again using the returned token to retrieve the
next page. Keep all other arguments unchanged. Each pagination token
expires after 24 hours. Using an expired pagination token returns an
C<HTTP 400 InvalidToken> error.


=head2 B<REQUIRED> Queues => ArrayRef[L<Paws::PCS::QueueSummary>]

The list of queues associated with the cluster.


=head2 _request_id => Str


=cut

1;