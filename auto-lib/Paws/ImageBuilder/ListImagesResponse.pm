
package Paws::ImageBuilder::ListImagesResponse;
  use Moose;
  has ImageVersionList => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::ImageVersion]', traits => ['NameInRequest'], request_name => 'imageVersionList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListImagesResponse

=head1 ATTRIBUTES


=head2 ImageVersionList => ArrayRef[L<Paws::ImageBuilder::ImageVersion>]

The list of image semantic versions.

The semantic version has four nodes:
E<lt>majorE<gt>.E<lt>minorE<gt>.E<lt>patchE<gt>/E<lt>buildE<gt>. You
can assign values for the first three, and can filter on all of them.

B<Filtering:> With semantic versioning, you have the flexibility to use
wildcards (x) to specify the most recent versions or nodes when
selecting the base image or components for your recipe. When you use a
wildcard in any node, all nodes to the right of the first wildcard must
also be wildcards.


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

