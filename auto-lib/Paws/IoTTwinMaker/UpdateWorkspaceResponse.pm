
package Paws::IoTTwinMaker::UpdateWorkspaceResponse;
  use Moose;
  has UpdateDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::UpdateWorkspaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UpdateDateTime => Str

The date and time of the current update.


=head2 _request_id => Str


=cut

