
package Paws::SageMaker::UpdateComputeQuotaResponse;
  use Moose;
  has ComputeQuotaArn => (is => 'ro', isa => 'Str', required => 1);
  has ComputeQuotaVersion => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateComputeQuotaResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeQuotaArn => Str

ARN of the compute allocation definition.


=head2 B<REQUIRED> ComputeQuotaVersion => Int

Version of the compute allocation definition.


=head2 _request_id => Str


=cut

1;