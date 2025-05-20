
package Paws::LakeFormation::GetDataLakePrincipalResponse;
  use Moose;
  has Identity => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetDataLakePrincipalResponse

=head1 ATTRIBUTES


=head2 Identity => Str

A unique identifier of the invoking principal.


=head2 _request_id => Str


=cut

