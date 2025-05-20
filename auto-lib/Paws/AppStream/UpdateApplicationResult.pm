
package Paws::AppStream::UpdateApplicationResult;
  use Moose;
  has Application => (is => 'ro', isa => 'Paws::AppStream::Application');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateApplicationResult

=head1 ATTRIBUTES


=head2 Application => L<Paws::AppStream::Application>




=head2 _request_id => Str


=cut

1;