
package Paws::OpenSearchServerless::BatchGetVpcEndpointResponse;
  use Moose;
  has VpcEndpointDetails => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::VpcEndpointDetail]', traits => ['NameInRequest'], request_name => 'vpcEndpointDetails' );
  has VpcEndpointErrorDetails => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::VpcEndpointErrorDetail]', traits => ['NameInRequest'], request_name => 'vpcEndpointErrorDetails' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::BatchGetVpcEndpointResponse

=head1 ATTRIBUTES


=head2 VpcEndpointDetails => ArrayRef[L<Paws::OpenSearchServerless::VpcEndpointDetail>]

Details about the specified VPC endpoint.


=head2 VpcEndpointErrorDetails => ArrayRef[L<Paws::OpenSearchServerless::VpcEndpointErrorDetail>]

Error information for a failed request.


=head2 _request_id => Str


=cut

1;