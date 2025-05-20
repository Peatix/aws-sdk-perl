
package Paws::EMR::GetPersistentAppUIPresignedURLOutput;
  use Moose;
  has PresignedURL => (is => 'ro', isa => 'Str');
  has PresignedURLReady => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::GetPersistentAppUIPresignedURLOutput

=head1 ATTRIBUTES


=head2 PresignedURL => Str

The returned presigned URL.


=head2 PresignedURLReady => Bool

Used to determine if the presigned URL is ready.


=head2 _request_id => Str


=cut

1;