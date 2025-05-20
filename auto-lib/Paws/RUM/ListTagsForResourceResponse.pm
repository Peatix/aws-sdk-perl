
package Paws::RUM::ListTagsForResourceResponse;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::RUM::TagMap', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource that you are viewing.


=head2 B<REQUIRED> Tags => L<Paws::RUM::TagMap>

The list of tag keys and values associated with the resource you
specified.


=head2 _request_id => Str


=cut

