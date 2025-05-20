
package Paws::SageMaker::CreateApp;
  use Moose;
  has AppName => (is => 'ro', isa => 'Str', required => 1);
  has AppType => (is => 'ro', isa => 'Str', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has RecoveryMode => (is => 'ro', isa => 'Bool');
  has ResourceSpec => (is => 'ro', isa => 'Paws::SageMaker::ResourceSpec');
  has SpaceName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has UserProfileName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateAppResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateApp - Arguments for method CreateApp on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApp on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApp.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateAppResponse = $api . sagemaker->CreateApp(
      AppName      => 'MyAppName',
      AppType      => 'JupyterServer',
      DomainId     => 'MyDomainId',
      RecoveryMode => 1,                 # OPTIONAL
      ResourceSpec => {
        InstanceType => 'system'
        , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.8xlarge, ml.m5d.12xlarge, ml.m5d.16xlarge, ml.m5d.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.geospatial.interactive, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.p5.48xlarge, ml.p5en.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.m6id.large, ml.m6id.xlarge, ml.m6id.2xlarge, ml.m6id.4xlarge, ml.m6id.8xlarge, ml.m6id.12xlarge, ml.m6id.16xlarge, ml.m6id.24xlarge, ml.m6id.32xlarge, ml.c6id.large, ml.c6id.xlarge, ml.c6id.2xlarge, ml.c6id.4xlarge, ml.c6id.8xlarge, ml.c6id.12xlarge, ml.c6id.16xlarge, ml.c6id.24xlarge, ml.c6id.32xlarge, ml.r6id.large, ml.r6id.xlarge, ml.r6id.2xlarge, ml.r6id.4xlarge, ml.r6id.8xlarge, ml.r6id.12xlarge, ml.r6id.16xlarge, ml.r6id.24xlarge, ml.r6id.32xlarge; OPTIONAL
        LifecycleConfigArn => 'MyStudioLifecycleConfigArn', # max: 256; OPTIONAL
        SageMakerImageArn  => 'MyImageArn',                 # max: 256; OPTIONAL
        SageMakerImageVersionAlias =>
          'MyImageVersionAlias',    # min: 1, max: 128; OPTIONAL
        SageMakerImageVersionArn => 'MyImageVersionArn',    # max: 256; OPTIONAL
      },    # OPTIONAL
      SpaceName => 'MySpaceName',    # OPTIONAL
      Tags      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      UserProfileName => 'MyUserProfileName',    # OPTIONAL
    );

    # Results:
    my $AppArn = $CreateAppResponse->AppArn;

    # Returns a L<Paws::SageMaker::CreateAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppName => Str

The name of the app.



=head2 B<REQUIRED> AppType => Str

The type of app.

Valid values are: C<"JupyterServer">, C<"KernelGateway">, C<"DetailedProfiler">, C<"TensorBoard">, C<"CodeEditor">, C<"JupyterLab">, C<"RStudioServerPro">, C<"RSessionGateway">, C<"Canvas">

=head2 B<REQUIRED> DomainId => Str

The domain ID.



=head2 RecoveryMode => Bool

Indicates whether the application is launched in recovery mode.



=head2 ResourceSpec => L<Paws::SageMaker::ResourceSpec>

The instance type and the Amazon Resource Name (ARN) of the SageMaker
AI image created on the instance.

The value of C<InstanceType> passed as part of the C<ResourceSpec> in
the C<CreateApp> call overrides the value passed as part of the
C<ResourceSpec> configured for the user profile or the domain. If
C<InstanceType> is not specified in any of those three C<ResourceSpec>
values for a C<KernelGateway> app, the C<CreateApp> call fails with a
request validation error.



=head2 SpaceName => Str

The name of the space. If this value is not set, then
C<UserProfileName> must be set.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Each tag consists of a key and an optional value. Tag keys must be
unique per resource.



=head2 UserProfileName => Str

The user profile name. If this value is not set, then C<SpaceName> must
be set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApp in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

