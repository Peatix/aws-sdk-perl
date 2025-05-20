
package Paws::Artifact::ListReportsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Reports => (is => 'ro', isa => 'ArrayRef[Paws::Artifact::ReportSummary]', traits => ['NameInRequest'], request_name => 'reports');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Artifact::ListReportsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token to request the next page of resources.


=head2 Reports => ArrayRef[L<Paws::Artifact::ReportSummary>]

List of report resources.


=head2 _request_id => Str


=cut

