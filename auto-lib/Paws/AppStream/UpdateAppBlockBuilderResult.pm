
package Paws::AppStream::UpdateAppBlockBuilderResult;
  use Moose;
  has AppBlockBuilder => (is => 'ro', isa => 'Paws::AppStream::AppBlockBuilder');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateAppBlockBuilderResult

=head1 ATTRIBUTES


=head2 AppBlockBuilder => L<Paws::AppStream::AppBlockBuilder>




=head2 _request_id => Str


=cut

1;