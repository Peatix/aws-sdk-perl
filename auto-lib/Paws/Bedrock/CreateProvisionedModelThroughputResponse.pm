
package Paws::Bedrock::CreateProvisionedModelThroughputResponse;
  use Moose;
  has ProvisionedModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provisionedModelArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateProvisionedModelThroughputResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProvisionedModelArn => Str

The Amazon Resource Name (ARN) for this Provisioned Throughput.


=head2 _request_id => Str


=cut

