
package Paws::ImageBuilder::ListImageScanFindingAggregationsResponse;
  use Moose;
  has AggregationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationType');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has Responses => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::ImageScanFindingAggregation]', traits => ['NameInRequest'], request_name => 'responses');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListImageScanFindingAggregationsResponse

=head1 ATTRIBUTES


=head2 AggregationType => Str

The aggregation type specifies what type of key is used to group the
image scan findings. Image Builder returns results based on the request
filter. If you didn't specify a filter in the request, the type
defaults to C<accountId>.

B<Aggregation types>

=over

=item *

accountId

=item *

imageBuildVersionArn

=item *

imagePipelineArn

=item *

vulnerabilityId

=back

Each aggregation includes counts by severity level for medium severity
and higher level findings, plus a total for all of the findings for
each key value.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 Responses => ArrayRef[L<Paws::ImageBuilder::ImageScanFindingAggregation>]

An array of image scan finding aggregations that match the filter
criteria.


=head2 _request_id => Str


=cut

