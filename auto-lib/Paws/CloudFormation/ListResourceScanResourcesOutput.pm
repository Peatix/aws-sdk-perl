
package Paws::CloudFormation::ListResourceScanResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ScannedResource]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListResourceScanResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all the remaining results, C<NextToken>
is set to a token. To retrieve the next set of results, call
C<ListResourceScanResources> again and use that value for the
C<NextToken> parameter. If the request returns all results,
C<NextToken> is set to an empty string.


=head2 Resources => ArrayRef[L<Paws::CloudFormation::ScannedResource>]

List of up to C<MaxResults> resources in the specified resource scan
that match all of the specified filters.


=head2 _request_id => Str


=cut

