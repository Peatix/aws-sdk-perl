
package Paws::Route53RecoveryReadiness::ListCrossAccountAuthorizationsResponse;
  use Moose;
  has CrossAccountAuthorizations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'crossAccountAuthorizations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::ListCrossAccountAuthorizationsResponse

=head1 ATTRIBUTES


=head2 CrossAccountAuthorizations => ArrayRef[Str|Undef]

A list of cross-account authorizations.


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 _request_id => Str


=cut

