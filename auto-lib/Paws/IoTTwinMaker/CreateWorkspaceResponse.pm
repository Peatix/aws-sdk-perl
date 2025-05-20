
package Paws::IoTTwinMaker::CreateWorkspaceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::CreateWorkspaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the workspace.


=head2 B<REQUIRED> CreationDateTime => Str

The date and time when the workspace was created.


=head2 _request_id => Str


=cut

