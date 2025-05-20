
package Paws::Route53RecoveryReadiness::CreateCrossAccountAuthorizationResponse;
  use Moose;
  has CrossAccountAuthorization => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'crossAccountAuthorization');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::CreateCrossAccountAuthorizationResponse

=head1 ATTRIBUTES


=head2 CrossAccountAuthorization => Str

The cross-account authorization.


=head2 _request_id => Str


=cut

