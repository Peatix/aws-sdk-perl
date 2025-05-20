
package Paws::DataZone::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::DataZone::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::DataZone::Tags>

The tags of the specified resource.


=head2 _request_id => Str


=cut

