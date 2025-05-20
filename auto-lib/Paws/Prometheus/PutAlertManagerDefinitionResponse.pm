
package Paws::Prometheus::PutAlertManagerDefinitionResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::Prometheus::AlertManagerDefinitionStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::PutAlertManagerDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => L<Paws::Prometheus::AlertManagerDefinitionStatus>

A structure that returns the current status of the alert manager
definition.


=head2 _request_id => Str


=cut

