
package Paws::AmplifyUIBuilder::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::Tags', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::AmplifyUIBuilder::Tags>

A list of tag key value pairs for a specified Amazon Resource Name
(ARN).


=head2 _request_id => Str


=cut

