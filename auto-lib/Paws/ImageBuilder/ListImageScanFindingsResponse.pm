
package Paws::ImageBuilder::ListImageScanFindingsResponse;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::ImageScanFinding]', traits => ['NameInRequest'], request_name => 'findings');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListImageScanFindingsResponse

=head1 ATTRIBUTES


=head2 Findings => ArrayRef[L<Paws::ImageBuilder::ImageScanFinding>]

The image scan findings for your account that meet your request filter
criteria.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

