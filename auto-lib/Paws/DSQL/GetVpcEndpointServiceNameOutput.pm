
package Paws::DSQL::GetVpcEndpointServiceNameOutput;
  use Moose;
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL::GetVpcEndpointServiceNameOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceName => Str

The VPC endpoint service name.


=head2 _request_id => Str


=cut

