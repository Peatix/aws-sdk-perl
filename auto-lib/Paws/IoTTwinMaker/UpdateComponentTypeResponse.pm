
package Paws::IoTTwinMaker::UpdateComponentTypeResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has ComponentTypeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentTypeId', required => 1);
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::UpdateComponentTypeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the component type.


=head2 B<REQUIRED> ComponentTypeId => Str

The ID of the component type.


=head2 B<REQUIRED> State => Str

The current state of the component type.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"ACTIVE">, C<"ERROR">
=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the component type.


=head2 _request_id => Str


=cut

