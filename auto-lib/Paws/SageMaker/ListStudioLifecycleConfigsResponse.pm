
package Paws::SageMaker::ListStudioLifecycleConfigsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StudioLifecycleConfigs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::StudioLifecycleConfigDetails]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListStudioLifecycleConfigsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.


=head2 StudioLifecycleConfigs => ArrayRef[L<Paws::SageMaker::StudioLifecycleConfigDetails>]

A list of Lifecycle Configurations and their properties.


=head2 _request_id => Str


=cut

1;