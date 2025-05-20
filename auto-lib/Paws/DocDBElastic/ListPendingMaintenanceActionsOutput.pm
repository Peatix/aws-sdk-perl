
package Paws::DocDBElastic::ListPendingMaintenanceActionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourcePendingMaintenanceActions => (is => 'ro', isa => 'ArrayRef[Paws::DocDBElastic::ResourcePendingMaintenanceAction]', traits => ['NameInRequest'], request_name => 'resourcePendingMaintenanceActions', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::ListPendingMaintenanceActionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional pagination token provided by a previous request. If this
parameter is displayed, the responses will include only records beyond
the marker, up to the value specified by C<maxResults>.


=head2 B<REQUIRED> ResourcePendingMaintenanceActions => ArrayRef[L<Paws::DocDBElastic::ResourcePendingMaintenanceAction>]

Provides information about a pending maintenance action for a resource.


=head2 _request_id => Str


=cut

