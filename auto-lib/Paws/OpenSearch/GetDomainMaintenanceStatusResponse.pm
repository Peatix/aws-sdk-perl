
package Paws::OpenSearch::GetDomainMaintenanceStatusResponse;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has NodeId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::GetDomainMaintenanceStatusResponse

=head1 ATTRIBUTES


=head2 Action => Str

The action name.

Valid values are: C<"REBOOT_NODE">, C<"RESTART_SEARCH_PROCESS">, C<"RESTART_DASHBOARD">
=head2 CreatedAt => Str

The time at which the action was created.


=head2 NodeId => Str

The node ID of the maintenance action.


=head2 Status => Str

The status of the maintenance action.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"TIMED_OUT">
=head2 StatusMessage => Str

The status message of the maintenance action.


=head2 UpdatedAt => Str

The time at which the action was updated.


=head2 _request_id => Str


=cut

