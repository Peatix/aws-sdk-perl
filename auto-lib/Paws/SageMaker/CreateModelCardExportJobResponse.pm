
package Paws::SageMaker::CreateModelCardExportJobResponse;
  use Moose;
  has ModelCardExportJobArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelCardExportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelCardExportJobArn => Str

The Amazon Resource Name (ARN) of the model card export job.


=head2 _request_id => Str


=cut

1;