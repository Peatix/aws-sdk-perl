
package Paws::Prometheus::DescribeAlertManagerDefinitionResponse;
  use Moose;
  has AlertManagerDefinition => (is => 'ro', isa => 'Paws::Prometheus::AlertManagerDefinitionDescription', traits => ['NameInRequest'], request_name => 'alertManagerDefinition', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::DescribeAlertManagerDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlertManagerDefinition => L<Paws::Prometheus::AlertManagerDefinitionDescription>

The alert manager definition.


=head2 _request_id => Str


=cut

