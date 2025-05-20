
package Paws::WAFV2::GetDecryptedAPIKeyResponse;
  use Moose;
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has TokenDomains => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetDecryptedAPIKeyResponse

=head1 ATTRIBUTES


=head2 CreationTimestamp => Str

The date and time that the key was created.


=head2 TokenDomains => ArrayRef[Str|Undef]

The token domains that are defined in this API key.


=head2 _request_id => Str


=cut

1;