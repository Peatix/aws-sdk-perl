
package Paws::SageMaker::CreateStudioLifecycleConfigResponse;
  use Moose;
  has StudioLifecycleConfigArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateStudioLifecycleConfigResponse

=head1 ATTRIBUTES


=head2 StudioLifecycleConfigArn => Str

The ARN of your created Lifecycle Configuration.


=head2 _request_id => Str


=cut

1;