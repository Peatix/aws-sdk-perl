
package Paws::Signer::GetRevocationStatusResponse;
  use Moose;
  has RevokedEntities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'revokedEntities');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::GetRevocationStatusResponse

=head1 ATTRIBUTES


=head2 RevokedEntities => ArrayRef[Str|Undef]

A list of revoked entities (including zero or more of the signing
profile ARN, signing job ARN, and certificate hashes) supplied as input
to the API.


=head2 _request_id => Str


=cut

