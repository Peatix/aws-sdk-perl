
package Paws::CloudFormation::ListResourceScanRelatedResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RelatedResources => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ScannedResource]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListResourceScanRelatedResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all the remaining results, C<NextToken>
is set to a token. To retrieve the next set of results, call
C<ListResourceScanRelatedResources> again and use that value for the
C<NextToken> parameter. If the request returns all results,
C<NextToken> is set to an empty string.


=head2 RelatedResources => ArrayRef[L<Paws::CloudFormation::ScannedResource>]

List of up to C<MaxResults> resources in the specified resource scan
related to the specified resources.


=head2 _request_id => Str


=cut

