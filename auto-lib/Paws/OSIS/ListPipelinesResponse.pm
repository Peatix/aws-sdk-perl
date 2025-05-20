
package Paws::OSIS::ListPipelinesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Pipelines => (is => 'ro', isa => 'ArrayRef[Paws::OSIS::PipelineSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::ListPipelinesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 Pipelines => ArrayRef[L<Paws::OSIS::PipelineSummary>]

A list of all existing Data Prepper pipelines.


=head2 _request_id => Str


=cut

