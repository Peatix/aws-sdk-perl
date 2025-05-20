
package Paws::QConnect::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::QConnect::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::QConnect::Tags>

The tags used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut

