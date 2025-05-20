
package Paws::ImageBuilder::ListContainerRecipesResponse;
  use Moose;
  has ContainerRecipeSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::ContainerRecipeSummary]', traits => ['NameInRequest'], request_name => 'containerRecipeSummaryList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListContainerRecipesResponse

=head1 ATTRIBUTES


=head2 ContainerRecipeSummaryList => ArrayRef[L<Paws::ImageBuilder::ContainerRecipeSummary>]

The list of container recipes returned for the request.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

