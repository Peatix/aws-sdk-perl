
package Paws::DocDBElastic::ApplyPendingMaintenanceActionOutput;
  use Moose;
  has ResourcePendingMaintenanceAction => (is => 'ro', isa => 'Paws::DocDBElastic::ResourcePendingMaintenanceAction', traits => ['NameInRequest'], request_name => 'resourcePendingMaintenanceAction', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::ApplyPendingMaintenanceActionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourcePendingMaintenanceAction => L<Paws::DocDBElastic::ResourcePendingMaintenanceAction>

The output of the pending maintenance action being applied.


=head2 _request_id => Str


=cut

