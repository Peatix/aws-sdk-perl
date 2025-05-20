
package Paws::Deadline::ListSessionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sessions => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::SessionSummary]', traits => ['NameInRequest'], request_name => 'sessions', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::ListSessionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If Deadline Cloud returns C<nextToken>, then there are more results
available. The value of C<nextToken> is a unique pagination token for
each page. To retrieve the next page, call the operation again using
the returned token. Keep all other arguments unchanged. If no results
remain, then C<nextToken> is set to C<null>. Each pagination token
expires after 24 hours. If you provide a token that isn't valid, then
you receive an HTTP 400 C<ValidationException> error.


=head2 B<REQUIRED> Sessions => ArrayRef[L<Paws::Deadline::SessionSummary>]

The sessions on the list.


=head2 _request_id => Str


=cut

