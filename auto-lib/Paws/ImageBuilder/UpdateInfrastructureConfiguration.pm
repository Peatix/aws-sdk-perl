
package Paws::ImageBuilder::UpdateInfrastructureConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InfrastructureConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'infrastructureConfigurationArn', required => 1);
  has InstanceMetadataOptions => (is => 'ro', isa => 'Paws::ImageBuilder::InstanceMetadataOptions', traits => ['NameInRequest'], request_name => 'instanceMetadataOptions');
  has InstanceProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceProfileName', required => 1);
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceTypes');
  has KeyPair => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyPair');
  has Logging => (is => 'ro', isa => 'Paws::ImageBuilder::Logging', traits => ['NameInRequest'], request_name => 'logging');
  has Placement => (is => 'ro', isa => 'Paws::ImageBuilder::Placement', traits => ['NameInRequest'], request_name => 'placement');
  has ResourceTags => (is => 'ro', isa => 'Paws::ImageBuilder::ResourceTagMap', traits => ['NameInRequest'], request_name => 'resourceTags');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has SnsTopicArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snsTopicArn');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subnetId');
  has TerminateInstanceOnFailure => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'terminateInstanceOnFailure');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInfrastructureConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateInfrastructureConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::UpdateInfrastructureConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::UpdateInfrastructureConfiguration - Arguments for method UpdateInfrastructureConfiguration on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInfrastructureConfiguration on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method UpdateInfrastructureConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInfrastructureConfiguration.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $UpdateInfrastructureConfigurationResponse =
      $imagebuilder->UpdateInfrastructureConfiguration(
      ClientToken                    => 'MyClientToken',
      InfrastructureConfigurationArn => 'MyInfrastructureConfigurationArn',
      InstanceProfileName            => 'MyInstanceProfileNameType',
      Description                    => 'MyNonEmptyString',    # OPTIONAL
      InstanceMetadataOptions        => {
        HttpPutResponseHopLimit => 1,                # min: 1, max: 64; OPTIONAL
        HttpTokens              => 'MyHttpTokens',   # OPTIONAL
      },    # OPTIONAL
      InstanceTypes => [ 'MyInstanceType', ... ],    # OPTIONAL
      KeyPair       => 'MyNonEmptyString',           # OPTIONAL
      Logging       => {
        S3Logs => {
          S3BucketName => 'MyNonEmptyString',    # min: 1, max: 1024
          S3KeyPrefix  => 'MyNonEmptyString',    # min: 1, max: 1024
        },    # OPTIONAL
      },    # OPTIONAL
      Placement => {
        AvailabilityZone     => 'MyNonEmptyString',    # min: 1, max: 1024
        HostId               => 'MyNonEmptyString',    # min: 1, max: 1024
        HostResourceGroupArn => 'MyNonEmptyString',    # min: 1, max: 1024
        Tenancy => 'default',    # values: default, dedicated, host; OPTIONAL
      },    # OPTIONAL
      ResourceTags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      SecurityGroupIds => [
        'MyNonEmptyString', ...    # min: 1, max: 1024
      ],    # OPTIONAL
      SnsTopicArn                => 'MySnsTopicArn',       # OPTIONAL
      SubnetId                   => 'MyNonEmptyString',    # OPTIONAL
      TerminateInstanceOnFailure => 1,                     # OPTIONAL
      );

    # Results:
    my $ClientToken = $UpdateInfrastructureConfigurationResponse->ClientToken;
    my $InfrastructureConfigurationArn =
      $UpdateInfrastructureConfigurationResponse
      ->InfrastructureConfigurationArn;
    my $RequestId = $UpdateInfrastructureConfigurationResponse->RequestId;

# Returns a L<Paws::ImageBuilder::UpdateInfrastructureConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/UpdateInfrastructureConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 Description => Str

The description of the infrastructure configuration.



=head2 B<REQUIRED> InfrastructureConfigurationArn => Str

The Amazon Resource Name (ARN) of the infrastructure configuration that
you want to update.



=head2 InstanceMetadataOptions => L<Paws::ImageBuilder::InstanceMetadataOptions>

The instance metadata options that you can set for the HTTP requests
that pipeline builds use to launch EC2 build and test instances. For
more information about instance metadata options, see one of the
following links:

=over

=item *

Configure the instance metadata options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html)
in the I< I<Amazon EC2 User Guide> > for Linux instances.

=item *

Configure the instance metadata options
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html)
in the I< I<Amazon EC2 Windows Guide> > for Windows instances.

=back




=head2 B<REQUIRED> InstanceProfileName => Str

The instance profile to associate with the instance used to customize
your Amazon EC2 AMI.



=head2 InstanceTypes => ArrayRef[Str|Undef]

The instance types of the infrastructure configuration. You can specify
one or more instance types to use for this build. The service will pick
one of these instance types based on availability.



=head2 KeyPair => Str

The key pair of the infrastructure configuration. You can use this to
log on to and debug the instance used to create your image.



=head2 Logging => L<Paws::ImageBuilder::Logging>

The logging configuration of the infrastructure configuration.



=head2 Placement => L<Paws::ImageBuilder::Placement>

The instance placement settings that define where the instances that
are launched from your image will run.



=head2 ResourceTags => L<Paws::ImageBuilder::ResourceTagMap>

The tags attached to the resource created by Image Builder.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The security group IDs to associate with the instance used to customize
your Amazon EC2 AMI.



=head2 SnsTopicArn => Str

The Amazon Resource Name (ARN) for the SNS topic to which we send image
build event notifications.

EC2 Image Builder is unable to send notifications to SNS topics that
are encrypted using keys from other accounts. The key that is used to
encrypt the SNS topic must reside in the account that the Image Builder
service runs under.



=head2 SubnetId => Str

The subnet ID to place the instance used to customize your Amazon EC2
AMI in.



=head2 TerminateInstanceOnFailure => Bool

The terminate instance on failure setting of the infrastructure
configuration. Set to false if you want Image Builder to retain the
instance used to configure your AMI if the build or test phase of your
workflow fails.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInfrastructureConfiguration in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

