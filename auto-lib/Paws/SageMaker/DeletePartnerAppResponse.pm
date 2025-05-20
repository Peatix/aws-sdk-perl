
package Paws::SageMaker::DeletePartnerAppResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeletePartnerAppResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the SageMaker Partner AI App that was deleted.


=head2 _request_id => Str


=cut

1;