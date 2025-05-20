
package Paws::Transfer::ImportHostKeyResponse;
  use Moose;
  has HostKeyId => (is => 'ro', isa => 'Str', required => 1);
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ImportHostKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostKeyId => Str

Returns the host key identifier for the imported key.


=head2 B<REQUIRED> ServerId => Str

Returns the server identifier that contains the imported key.


=head2 _request_id => Str


=cut

1;