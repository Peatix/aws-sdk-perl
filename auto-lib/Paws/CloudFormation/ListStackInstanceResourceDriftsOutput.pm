
package Paws::CloudFormation::ListStackInstanceResourceDriftsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackInstanceResourceDriftsSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackInstanceResourceDriftsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous paginated request didn't return all of the remaining
results, the response object's C<NextToken> parameter value is set to a
token. To retrieve the next set of results, call this action again and
assign that token to the request object's C<NextToken> parameter. If
there are no remaining results, the previous response object's
C<NextToken> parameter is set to C<null>.


=head2 Summaries => ArrayRef[L<Paws::CloudFormation::StackInstanceResourceDriftsSummary>]

A list of C<StackInstanceResourceDriftsSummary> structures that contain
information about the specified stack instances.


=head2 _request_id => Str


=cut

