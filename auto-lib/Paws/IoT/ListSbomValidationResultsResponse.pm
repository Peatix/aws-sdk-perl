
package Paws::IoT::ListSbomValidationResultsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ValidationResultSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoT::SbomValidationResultSummary]', traits => ['NameInRequest'], request_name => 'validationResultSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListSbomValidationResultsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or null
if there are no additional results.


=head2 ValidationResultSummaries => ArrayRef[L<Paws::IoT::SbomValidationResultSummary>]

A summary of the validation results for each software bill of materials
attached to a software package version.


=head2 _request_id => Str


=cut

