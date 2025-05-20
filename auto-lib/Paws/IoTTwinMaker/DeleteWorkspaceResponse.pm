
package Paws::IoTTwinMaker::DeleteWorkspaceResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::DeleteWorkspaceResponse

=head1 ATTRIBUTES


=head2 Message => Str

The string that specifies the delete result for the workspace.


=head2 _request_id => Str


=cut

