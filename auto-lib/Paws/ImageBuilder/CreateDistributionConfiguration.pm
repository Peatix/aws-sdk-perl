
package Paws::ImageBuilder::CreateDistributionConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Distributions => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::Distribution]', traits => ['NameInRequest'], request_name => 'distributions', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDistributionConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateDistributionConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::CreateDistributionConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateDistributionConfiguration - Arguments for method CreateDistributionConfiguration on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDistributionConfiguration on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method CreateDistributionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDistributionConfiguration.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $CreateDistributionConfigurationResponse =
      $imagebuilder->CreateDistributionConfiguration(
      ClientToken   => 'MyClientToken',
      Distributions => [
        {
          Region => 'MyNonEmptyString',    # min: 1, max: 1024
          AmiDistributionConfiguration => {
            AmiTags => {
              'MyTagKey' =>
                'MyTagValue',    # key: min: 1, max: 128, value: max: 256
            },    # min: 1, max: 50; OPTIONAL
            Description      => 'MyNonEmptyString',    # min: 1, max: 1024
            KmsKeyId         => 'MyNonEmptyString',    # min: 1, max: 1024
            LaunchPermission => {
              OrganizationArns => [ 'MyOrganizationArn', ... ]
              ,    # min: 1, max: 25; OPTIONAL
              OrganizationalUnitArns => [ 'MyOrganizationalUnitArn', ... ]
              ,    # min: 1, max: 25; OPTIONAL
              UserGroups => [
                'MyNonEmptyString', ...    # min: 1, max: 1024
              ],    # OPTIONAL
              UserIds => [ 'MyAccountId', ... ],   # min: 1, max: 1536; OPTIONAL
            },    # OPTIONAL
            Name             => 'MyAmiNameString',  # min: 1, max: 127; OPTIONAL
            TargetAccountIds => [ 'MyAccountId', ... ]
            ,    # min: 1, max: 1536; OPTIONAL
          },    # OPTIONAL
          ContainerDistributionConfiguration => {
            TargetRepository => {
              RepositoryName => 'MyNonEmptyString',    # min: 1, max: 1024
              Service        => 'ECR',                 # values: ECR

            },
            ContainerTags => [
              'MyNonEmptyString', ...                  # min: 1, max: 1024
            ],    # OPTIONAL
            Description => 'MyNonEmptyString',    # min: 1, max: 1024
          },    # OPTIONAL
          FastLaunchConfigurations => [
            {
              Enabled        => 1,
              AccountId      => 'MyAccountId',
              LaunchTemplate => {
                LaunchTemplateId   => 'MyLaunchTemplateId',  # OPTIONAL
                LaunchTemplateName => 'MyNonEmptyString',    # min: 1, max: 1024
                LaunchTemplateVersion => 'MyNonEmptyString', # min: 1, max: 1024
              },    # OPTIONAL
              MaxParallelLaunches   => 1,    # min: 1; OPTIONAL
              SnapshotConfiguration => {
                TargetResourceCount => 1,    # min: 1, max: 10000; OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # min: 1, max: 1000; OPTIONAL
          LaunchTemplateConfigurations => [
            {
              LaunchTemplateId  => 'MyLaunchTemplateId',    # OPTIONAL
              AccountId         => 'MyAccountId',
              SetDefaultVersion => 1,
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          LicenseConfigurationArns => [ 'MyLicenseConfigurationArn', ... ]
          ,     # min: 1, max: 50; OPTIONAL
          S3ExportConfiguration => {
            DiskImageFormat => 'VMDK',                # values: VMDK, RAW, VHD
            RoleName        => 'MyNonEmptyString',    # min: 1, max: 1024
            S3Bucket        => 'MyNonEmptyString',    # min: 1, max: 1024
            S3Prefix        => 'MyNonEmptyString',    # min: 1, max: 1024
          },    # OPTIONAL
          SsmParameterConfigurations => [
            {
              ParameterName => 'MySsmParameterName',    # min: 1, max: 1011
              AmiAccountId  => 'MyAccountId',
              DataType      => 'text',   # values: text, aws:ec2:image; OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],
      Name        => 'MyResourceName',
      Description => 'MyNonEmptyString',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $ClientToken = $CreateDistributionConfigurationResponse->ClientToken;
    my $DistributionConfigurationArn =
      $CreateDistributionConfigurationResponse->DistributionConfigurationArn;
    my $RequestId = $CreateDistributionConfigurationResponse->RequestId;

# Returns a L<Paws::ImageBuilder::CreateDistributionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/CreateDistributionConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 Description => Str

The description of the distribution configuration.



=head2 B<REQUIRED> Distributions => ArrayRef[L<Paws::ImageBuilder::Distribution>]

The distributions of the distribution configuration.



=head2 B<REQUIRED> Name => Str

The name of the distribution configuration.



=head2 Tags => L<Paws::ImageBuilder::TagMap>

The tags of the distribution configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDistributionConfiguration in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

