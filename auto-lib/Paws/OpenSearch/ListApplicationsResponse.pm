
package Paws::OpenSearch::ListApplicationsResponse;
  use Moose;
  has ApplicationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::ApplicationSummary]');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 ApplicationSummaries => ArrayRef[L<Paws::OpenSearch::ApplicationSummary>]

Summarizes OpenSearch applications, including ID, ARN, name, endpoint,
status, creation time, and last update time.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

