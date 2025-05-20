
package Paws::CloudTrail::ListQueriesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Queries => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Query]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListQueriesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token you can use to get the next page of results.


=head2 Queries => ArrayRef[L<Paws::CloudTrail::Query>]

Lists matching query results, and shows query ID, status, and creation
time of each query.


=head2 _request_id => Str


=cut

1;