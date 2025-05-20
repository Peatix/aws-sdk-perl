
package Paws::SageMaker::CreateComputeQuotaResponse;
  use Moose;
  has ComputeQuotaArn => (is => 'ro', isa => 'Str', required => 1);
  has ComputeQuotaId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateComputeQuotaResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeQuotaArn => Str

ARN of the compute allocation definition.


=head2 B<REQUIRED> ComputeQuotaId => Str

ID of the compute allocation definition.


=head2 _request_id => Str


=cut

1;