
package Paws::PCS::GetQueueResponse;
  use Moose;
  has Queue => (is => 'ro', isa => 'Paws::PCS::Queue', traits => ['NameInRequest'], request_name => 'queue' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PCS::GetQueueResponse

=head1 ATTRIBUTES


=head2 Queue => L<Paws::PCS::Queue>




=head2 _request_id => Str


=cut

1;