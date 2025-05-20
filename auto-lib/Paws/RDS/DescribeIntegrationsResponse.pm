
package Paws::RDS::DescribeIntegrationsResponse;
  use Moose;
  has Integrations => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Integration]', request_name => 'Integration', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeIntegrationsResponse

=head1 ATTRIBUTES


=head2 Integrations => ArrayRef[L<Paws::RDS::Integration>]

A list of integrations.


=head2 Marker => Str

A pagination token that can be used in a later C<DescribeIntegrations>
request.


=head2 _request_id => Str


=cut

