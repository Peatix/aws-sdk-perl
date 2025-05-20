
package Paws::SageMaker::CreateStudioLifecycleConfig;
  use Moose;
  has StudioLifecycleConfigAppType => (is => 'ro', isa => 'Str', required => 1);
  has StudioLifecycleConfigContent => (is => 'ro', isa => 'Str', required => 1);
  has StudioLifecycleConfigName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStudioLifecycleConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateStudioLifecycleConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateStudioLifecycleConfig - Arguments for method CreateStudioLifecycleConfig on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStudioLifecycleConfig on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateStudioLifecycleConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStudioLifecycleConfig.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateStudioLifecycleConfigResponse =
      $api . sagemaker->CreateStudioLifecycleConfig(
      StudioLifecycleConfigAppType => 'JupyterServer',
      StudioLifecycleConfigContent => 'MyStudioLifecycleConfigContent',
      StudioLifecycleConfigName    => 'MyStudioLifecycleConfigName',
      Tags                         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $StudioLifecycleConfigArn =
      $CreateStudioLifecycleConfigResponse->StudioLifecycleConfigArn;

    # Returns a L<Paws::SageMaker::CreateStudioLifecycleConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateStudioLifecycleConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StudioLifecycleConfigAppType => Str

The App type that the Lifecycle Configuration is attached to.

Valid values are: C<"JupyterServer">, C<"KernelGateway">, C<"CodeEditor">, C<"JupyterLab">

=head2 B<REQUIRED> StudioLifecycleConfigContent => Str

The content of your Amazon SageMaker AI Studio Lifecycle Configuration
script. This content must be base64 encoded.



=head2 B<REQUIRED> StudioLifecycleConfigName => Str

The name of the Amazon SageMaker AI Studio Lifecycle Configuration to
create.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Tags to be associated with the Lifecycle Configuration. Each tag
consists of a key and an optional value. Tag keys must be unique per
resource. Tags are searchable using the Search API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStudioLifecycleConfig in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

