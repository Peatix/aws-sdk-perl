
package Paws::QConnect::CreateContentResponse;
  use Moose;
  has Content => (is => 'ro', isa => 'Paws::QConnect::ContentData', traits => ['NameInRequest'], request_name => 'content');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateContentResponse

=head1 ATTRIBUTES


=head2 Content => L<Paws::QConnect::ContentData>

The content.


=head2 _request_id => Str


=cut

