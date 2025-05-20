
package Paws::CleanRooms::ListAnalysisTemplatesOutput;
  use Moose;
  has AnalysisTemplateSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::AnalysisTemplateSummary]', traits => ['NameInRequest'], request_name => 'analysisTemplateSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListAnalysisTemplatesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisTemplateSummaries => ArrayRef[L<Paws::CleanRooms::AnalysisTemplateSummary>]

Lists analysis template metadata.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

