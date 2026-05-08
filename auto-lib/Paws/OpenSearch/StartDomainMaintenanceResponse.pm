
package Paws::OpenSearch::StartDomainMaintenanceResponse;
  use Moose;
  has MaintenanceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::StartDomainMaintenanceResponse

=head1 ATTRIBUTES


=head2 MaintenanceId => Str

The request ID of requested action.


=head2 _request_id => Str


=cut

