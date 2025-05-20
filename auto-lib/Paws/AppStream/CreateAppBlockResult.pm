
package Paws::AppStream::CreateAppBlockResult;
  use Moose;
  has AppBlock => (is => 'ro', isa => 'Paws::AppStream::AppBlock');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateAppBlockResult

=head1 ATTRIBUTES


=head2 AppBlock => L<Paws::AppStream::AppBlock>

The app block.


=head2 _request_id => Str


=cut

1;