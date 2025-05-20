
package Paws::LookoutVision::StartModelPackagingJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has Configuration => (is => 'ro', isa => 'Paws::LookoutVision::ModelPackagingConfiguration', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has ModelVersion => (is => 'ro', isa => 'Str', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartModelPackagingJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-11-20/projects/{projectName}/modelpackagingjobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutVision::StartModelPackagingJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::StartModelPackagingJob - Arguments for method StartModelPackagingJob on L<Paws::LookoutVision>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartModelPackagingJob on the
L<Amazon Lookout for Vision|Paws::LookoutVision> service. Use the attributes of this class
as arguments to method StartModelPackagingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartModelPackagingJob.

=head1 SYNOPSIS

    my $lookoutvision = Paws->service('LookoutVision');
    my $StartModelPackagingJobResponse = $lookoutvision->StartModelPackagingJob(
      Configuration => {
        Greengrass => {
          ComponentName    => 'MyComponentName',    # min: 1, max: 128
          S3OutputLocation => {
            Bucket => 'MyS3BucketName',             # min: 3, max: 63
            Prefix => 'MyS3KeyPrefix',              # max: 1024; OPTIONAL
          },
          CompilerOptions => 'MyCompilerOptions',  # min: 3, max: 1024; OPTIONAL
          ComponentDescription =>
            'MyComponentDescription',              # min: 1, max: 256; OPTIONAL
          ComponentVersion => 'MyComponentVersion',  # min: 1, max: 64; OPTIONAL
          Tags             => [
            {
              Key   => 'MyTagKey',      # min: 1, max: 128
              Value => 'MyTagValue',    # max: 256

            },
            ...
          ],    # max: 200; OPTIONAL
          TargetDevice   => 'jetson_xavier',   # values: jetson_xavier; OPTIONAL
          TargetPlatform => {
            Arch        => 'ARM64',            # values: ARM64, X86_64
            Os          => 'LINUX',            # values: LINUX
            Accelerator => 'NVIDIA',           # values: NVIDIA; OPTIONAL
          },    # OPTIONAL
        },

      },
      ModelVersion => 'MyModelVersion',
      ProjectName  => 'MyProjectName',
      ClientToken  => 'MyClientToken',                     # OPTIONAL
      Description  => 'MyModelPackagingJobDescription',    # OPTIONAL
      JobName      => 'MyModelPackagingJobName',           # OPTIONAL
    );

    # Results:
    my $JobName = $StartModelPackagingJobResponse->JobName;

    # Returns a L<Paws::LookoutVision::StartModelPackagingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision/StartModelPackagingJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

ClientToken is an idempotency token that ensures a call to
C<StartModelPackagingJob> completes only once. You choose the value to
pass. For example, An issue might prevent you from getting a response
from C<StartModelPackagingJob>. In this case, safely retry your call to
C<StartModelPackagingJob> by using the same C<ClientToken> parameter
value.

If you don't supply a value for C<ClientToken>, the AWS SDK you are
using inserts a value for you. This prevents retries after a network
error from making multiple dataset creation requests. You'll need to
provide your own value for other use cases.

An error occurs if the other input parameters are not the same as in
the first request. Using a different value for C<ClientToken> is
considered a new call to C<StartModelPackagingJob>. An idempotency
token is active for 8 hours.



=head2 B<REQUIRED> Configuration => L<Paws::LookoutVision::ModelPackagingConfiguration>

The configuration for the model packaging job.



=head2 Description => Str

A description for the model packaging job.



=head2 JobName => Str

A name for the model packaging job. If you don't supply a value, the
service creates a job name for you.



=head2 B<REQUIRED> ModelVersion => Str

The version of the model within the project that you want to package.



=head2 B<REQUIRED> ProjectName => Str

The name of the project which contains the version of the model that
you want to package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartModelPackagingJob in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

