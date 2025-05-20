
package Paws::Bedrock::CreateModelImportJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ImportedModelKmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importedModelKmsKeyId');
  has ImportedModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importedModelName', required => 1);
  has ImportedModelTags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'importedModelTags');
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has JobTags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'jobTags');
  has ModelDataSource => (is => 'ro', isa => 'Paws::Bedrock::ModelDataSource', traits => ['NameInRequest'], request_name => 'modelDataSource', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has VpcConfig => (is => 'ro', isa => 'Paws::Bedrock::VpcConfig', traits => ['NameInRequest'], request_name => 'vpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModelImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-import-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::CreateModelImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateModelImportJob - Arguments for method CreateModelImportJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModelImportJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method CreateModelImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModelImportJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $CreateModelImportJobResponse = $bedrock->CreateModelImportJob(
      ImportedModelName => 'MyImportedModelName',
      JobName           => 'MyJobName',
      ModelDataSource   => {
        S3DataSource => {
          S3Uri => 'MyS3Uri',    # min: 1, max: 1024

        },    # OPTIONAL
      },
      RoleArn               => 'MyRoleArn',
      ClientRequestToken    => 'MyIdempotencyToken',    # OPTIONAL
      ImportedModelKmsKeyId => 'MyKmsKeyId',            # OPTIONAL
      ImportedModelTags     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      JobTags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # max: 32
        ],    # min: 1, max: 5
        SubnetIds => [
          'MySubnetId', ...    # max: 32
        ],    # min: 1, max: 16

      },    # OPTIONAL
    );

    # Results:
    my $JobArn = $CreateModelImportJobResponse->JobArn;

    # Returns a L<Paws::Bedrock::CreateModelImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/CreateModelImportJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 ImportedModelKmsKeyId => Str

The imported model is encrypted at rest using this key.



=head2 B<REQUIRED> ImportedModelName => Str

The name of the imported model.



=head2 ImportedModelTags => ArrayRef[L<Paws::Bedrock::Tag>]

Tags to attach to the imported model.



=head2 B<REQUIRED> JobName => Str

The name of the import job.



=head2 JobTags => ArrayRef[L<Paws::Bedrock::Tag>]

Tags to attach to this import job.



=head2 B<REQUIRED> ModelDataSource => L<Paws::Bedrock::ModelDataSource>

The data source for the imported model.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the model import job.



=head2 VpcConfig => L<Paws::Bedrock::VpcConfig>

VPC configuration parameters for the private Virtual Private Cloud
(VPC) that contains the resources you are using for the import job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelImportJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

