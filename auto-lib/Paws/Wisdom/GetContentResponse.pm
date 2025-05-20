
package Paws::Wisdom::GetContentResponse;
  use Moose;
  has Content => (is => 'ro', isa => 'Paws::Wisdom::ContentData', traits => ['NameInRequest'], request_name => 'content');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::GetContentResponse

=head1 ATTRIBUTES


=head2 Content => L<Paws::Wisdom::ContentData>

The content.


=head2 _request_id => Str


=cut

