
package Paws::Ivschat::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Ivschat::Tags', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::Ivschat::Tags>

Tags attached to the resource. Array of maps, each of the form
C<string:string (key:value)>.


=head2 _request_id => Str


=cut

