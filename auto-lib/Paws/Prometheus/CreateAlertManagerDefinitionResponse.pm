
package Paws::Prometheus::CreateAlertManagerDefinitionResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::Prometheus::AlertManagerDefinitionStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::CreateAlertManagerDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => L<Paws::Prometheus::AlertManagerDefinitionStatus>

A structure that displays the current status of the alert manager
definition.


=head2 _request_id => Str


=cut

