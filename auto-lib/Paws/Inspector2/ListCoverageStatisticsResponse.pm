
package Paws::Inspector2::ListCoverageStatisticsResponse;
  use Moose;
  has CountsByGroup => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::Counts]', traits => ['NameInRequest'], request_name => 'countsByGroup');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TotalCounts => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalCounts', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListCoverageStatisticsResponse

=head1 ATTRIBUTES


=head2 CountsByGroup => ArrayRef[L<Paws::Inspector2::Counts>]

An array with the number for each group.


=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the C<NextToken> value
returned from the previous request to continue listing results after
the first page.


=head2 B<REQUIRED> TotalCounts => Int

The total number for all groups.


=head2 _request_id => Str


=cut

