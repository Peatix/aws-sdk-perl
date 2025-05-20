
package Paws::IoTTwinMaker::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Tags => (is => 'ro', isa => 'Paws::IoTTwinMaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 Tags => L<Paws::IoTTwinMaker::TagMap>

Metadata that you can use to manage a resource.


=head2 _request_id => Str


=cut

