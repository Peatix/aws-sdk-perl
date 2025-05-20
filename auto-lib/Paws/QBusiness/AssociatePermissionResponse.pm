
package Paws::QBusiness::AssociatePermissionResponse;
  use Moose;
  has Statement => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statement');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::AssociatePermissionResponse

=head1 ATTRIBUTES


=head2 Statement => Str

The JSON representation of the added permission statement.


=head2 _request_id => Str


=cut

