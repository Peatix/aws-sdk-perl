
package Paws::Config::ListConformancePackComplianceScoresResponse;
  use Moose;
  has ConformancePackComplianceScores => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConformancePackComplianceScore]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListConformancePackComplianceScoresResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConformancePackComplianceScores => ArrayRef[L<Paws::Config::ConformancePackComplianceScore>]

A list of C<ConformancePackComplianceScore> objects.


=head2 NextToken => Str

The C<nextToken> string that you can use to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;