
package Paws::SnowDeviceManagement::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::SnowDeviceManagement::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::SnowDeviceManagement::TagMap>

The list of tags for the device or task.


=head2 _request_id => Str


=cut

