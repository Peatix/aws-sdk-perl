
package Paws::Deadline::ListMonitorsResponse;
  use Moose;
  has Monitors => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::MonitorSummary]', traits => ['NameInRequest'], request_name => 'monitors', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::ListMonitorsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Monitors => ArrayRef[L<Paws::Deadline::MonitorSummary>]

A list of C<MonitorSummary> objects that describe your monitors in the
Deadline Cloud.


=head2 NextToken => Str

If Deadline Cloud returns C<nextToken>, then there are more results
available. The value of C<nextToken> is a unique pagination token for
each page. To retrieve the next page, call the operation again using
the returned token. Keep all other arguments unchanged. If no results
remain, then C<nextToken> is set to C<null>. Each pagination token
expires after 24 hours. If you provide a token that isn't valid, then
you receive an HTTP 400 C<ValidationException> error.


=head2 _request_id => Str


=cut

