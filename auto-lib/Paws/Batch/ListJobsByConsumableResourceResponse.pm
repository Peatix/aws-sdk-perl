
package Paws::Batch::ListJobsByConsumableResourceResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::Batch::ListJobsByConsumableResourceSummary]', traits => ['NameInRequest'], request_name => 'jobs', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ListJobsByConsumableResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Jobs => ArrayRef[L<Paws::Batch::ListJobsByConsumableResourceSummary>]

The list of jobs that require the specified consumable resources.


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<ListJobsByConsumableResource> request. When the results of a
C<ListJobsByConsumableResource> request exceed C<maxResults>, this
value can be used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

