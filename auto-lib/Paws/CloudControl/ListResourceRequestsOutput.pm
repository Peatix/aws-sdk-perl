
package Paws::CloudControl::ListResourceRequestsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceRequestStatusSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudControl::ProgressEvent]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::ListResourceRequestsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all of the remaining results,
C<NextToken> is set to a token. To retrieve the next set of results,
call C<ListResources> again and assign that token to the request
object's C<NextToken> parameter. If the request returns all results,
C<NextToken> is set to null.


=head2 ResourceRequestStatusSummaries => ArrayRef[L<Paws::CloudControl::ProgressEvent>]

The requests that match the specified filter criteria.


=head2 _request_id => Str


=cut

1;