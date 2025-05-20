
package Paws::Braket::SearchJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::Braket::JobSummary]', traits => ['NameInRequest'], request_name => 'jobs', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::SearchJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Jobs => ArrayRef[L<Paws::Braket::JobSummary>]

An array of C<JobSummary> objects for devices that match the specified
filter values.


=head2 NextToken => Str

A token used for pagination of results, or C<null> if there are no
additional results. Use the token value in a subsequent request to
continue results where the previous request ended.


=head2 _request_id => Str


=cut

