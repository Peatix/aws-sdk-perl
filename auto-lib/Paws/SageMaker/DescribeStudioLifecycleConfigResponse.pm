
package Paws::SageMaker::DescribeStudioLifecycleConfigResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has StudioLifecycleConfigAppType => (is => 'ro', isa => 'Str');
  has StudioLifecycleConfigArn => (is => 'ro', isa => 'Str');
  has StudioLifecycleConfigContent => (is => 'ro', isa => 'Str');
  has StudioLifecycleConfigName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeStudioLifecycleConfigResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The creation time of the Amazon SageMaker AI Studio Lifecycle
Configuration.


=head2 LastModifiedTime => Str

This value is equivalent to CreationTime because Amazon SageMaker AI
Studio Lifecycle Configurations are immutable.


=head2 StudioLifecycleConfigAppType => Str

The App type that the Lifecycle Configuration is attached to.

Valid values are: C<"JupyterServer">, C<"KernelGateway">, C<"CodeEditor">, C<"JupyterLab">
=head2 StudioLifecycleConfigArn => Str

The ARN of the Lifecycle Configuration to describe.


=head2 StudioLifecycleConfigContent => Str

The content of your Amazon SageMaker AI Studio Lifecycle Configuration
script.


=head2 StudioLifecycleConfigName => Str

The name of the Amazon SageMaker AI Studio Lifecycle Configuration that
is described.


=head2 _request_id => Str


=cut

1;