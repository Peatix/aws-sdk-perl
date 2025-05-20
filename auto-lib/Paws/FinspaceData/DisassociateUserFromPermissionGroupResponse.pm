
package Paws::FinspaceData::DisassociateUserFromPermissionGroupResponse;
  use Moose;
  has StatusCode => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'statusCode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::DisassociateUserFromPermissionGroupResponse

=head1 ATTRIBUTES


=head2 StatusCode => Int

The returned status code of the response.


=head2 _request_id => Str


=cut

