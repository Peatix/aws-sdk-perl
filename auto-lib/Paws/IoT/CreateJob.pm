
package Paws::IoT::CreateJob;
  use Moose;
  has AbortConfig => (is => 'ro', isa => 'Paws::IoT::AbortConfig', traits => ['NameInRequest'], request_name => 'abortConfig');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DestinationPackageVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'destinationPackageVersions');
  has Document => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'document');
  has DocumentParameters => (is => 'ro', isa => 'Paws::IoT::ParameterMap', traits => ['NameInRequest'], request_name => 'documentParameters');
  has DocumentSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentSource');
  has JobExecutionsRetryConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRetryConfig', traits => ['NameInRequest'], request_name => 'jobExecutionsRetryConfig');
  has JobExecutionsRolloutConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRolloutConfig', traits => ['NameInRequest'], request_name => 'jobExecutionsRolloutConfig');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has JobTemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobTemplateArn');
  has NamespaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceId');
  has PresignedUrlConfig => (is => 'ro', isa => 'Paws::IoT::PresignedUrlConfig', traits => ['NameInRequest'], request_name => 'presignedUrlConfig');
  has SchedulingConfig => (is => 'ro', isa => 'Paws::IoT::SchedulingConfig', traits => ['NameInRequest'], request_name => 'schedulingConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has Targets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targets', required => 1);
  has TargetSelection => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetSelection');
  has TimeoutConfig => (is => 'ro', isa => 'Paws::IoT::TimeoutConfig', traits => ['NameInRequest'], request_name => 'timeoutConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateJob - Arguments for method CreateJob on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateJobResponse = $iot->CreateJob(
      JobId   => 'MyJobId',
      Targets => [
        'MyTargetArn', ...    # max: 2048
      ],
      AbortConfig => {
        CriteriaList => [
          {
            Action      => 'CANCEL',  # values: CANCEL
            FailureType => 'FAILED',  # values: FAILED, REJECTED, TIMED_OUT, ALL
            MinNumberOfExecutedThings => 1,    # min: 1
            ThresholdPercentage       => 1,    # max: 100

          },
          ...
        ],    # min: 1

      },    # OPTIONAL
      Description                => 'MyJobDescription',    # OPTIONAL
      DestinationPackageVersions => [
        'MyPackageVersionArn', ...                         # min: 1, max: 1600
      ],    # OPTIONAL
      Document           => 'MyJobDocument',    # OPTIONAL
      DocumentParameters => {
        'MyParameterKey' =>
          'MyParameterValue', # key: min: 1, max: 128, value: min: 1, max: 30720
      },    # OPTIONAL
      DocumentSource           => 'MyJobDocumentSource',    # OPTIONAL
      JobExecutionsRetryConfig => {
        CriteriaList => [
          {
            FailureType     => 'FAILED',    # values: FAILED, TIMED_OUT, ALL
            NumberOfRetries => 1,           # max: 10

          },
          ...
        ],    # min: 1, max: 2

      },    # OPTIONAL
      JobExecutionsRolloutConfig => {
        ExponentialRate => {
          BaseRatePerMinute    => 1,    # min: 1, max: 1000
          IncrementFactor      => 1,    # min: 1.1, max: 5
          RateIncreaseCriteria => {
            NumberOfNotifiedThings  => 1,    # min: 1; OPTIONAL
            NumberOfSucceededThings => 1,    # min: 1; OPTIONAL
          },

        },    # OPTIONAL
        MaximumPerMinute => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      JobTemplateArn     => 'MyJobTemplateArn',    # OPTIONAL
      NamespaceId        => 'MyNamespaceId',       # OPTIONAL
      PresignedUrlConfig => {
        ExpiresInSec => 1,              # min: 60, max: 3600; OPTIONAL
        RoleArn      => 'MyRoleArn',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      SchedulingConfig => {
        EndBehavior =>
          'STOP_ROLLOUT', # values: STOP_ROLLOUT, CANCEL, FORCE_CANCEL; OPTIONAL
        EndTime            => 'MyStringDateTime',    # min: 1, max: 64; OPTIONAL
        MaintenanceWindows => [
          {
            DurationInMinutes => 1,                     # min: 1, max: 1430
            StartTime         => 'MyCronExpression',    # min: 1, max: 256

          },
          ...
        ],    # OPTIONAL
        StartTime => 'MyStringDateTime',    # min: 1, max: 64; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TargetSelection => 'CONTINUOUS',    # OPTIONAL
      TimeoutConfig   => {
        InProgressTimeoutInMinutes => 1,    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Description = $CreateJobResponse->Description;
    my $JobArn      = $CreateJobResponse->JobArn;
    my $JobId       = $CreateJobResponse->JobId;

    # Returns a L<Paws::IoT::CreateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateJob>

=head1 ATTRIBUTES


=head2 AbortConfig => L<Paws::IoT::AbortConfig>

Allows you to create the criteria to abort a job.



=head2 Description => Str

A short text description of the job.



=head2 DestinationPackageVersions => ArrayRef[Str|Undef]

The package version Amazon Resource Names (ARNs) that are installed on
the device when the job successfully completes. The package version
must be in either the Published or Deprecated state when the job
deploys. For more information, see Package version lifecycle
(https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle).

B<Note:>The following Length Constraints relates to a single ARN. Up to
25 package version ARNs are allowed.



=head2 Document => Str

The job document. Required if you don't specify a value for
C<documentSource>.



=head2 DocumentParameters => L<Paws::IoT::ParameterMap>

Parameters of an Amazon Web Services managed template that you can
specify to create the job document.

C<documentParameters> can only be used when creating jobs from Amazon
Web Services managed templates. This parameter can't be used with
custom job templates or to create jobs from them.



=head2 DocumentSource => Str

An S3 link, or S3 object URL, to the job document. The link is an
Amazon S3 object URL and is required if you don't specify a value for
C<document>.

For example, C<--document-source
https://s3.I<region-code>.amazonaws.com/example-firmware/device-firmware.1.0>

For more information, see Methods for accessing a bucket
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-bucket-intro.html).



=head2 JobExecutionsRetryConfig => L<Paws::IoT::JobExecutionsRetryConfig>

Allows you to create the criteria to retry a job.



=head2 JobExecutionsRolloutConfig => L<Paws::IoT::JobExecutionsRolloutConfig>

Allows you to create a staged rollout of the job.



=head2 B<REQUIRED> JobId => Str

A job identifier which must be unique for your account. We recommend
using a UUID. Alpha-numeric characters, "-" and "_" are valid for use
here.



=head2 JobTemplateArn => Str

The ARN of the job template used to create the job.



=head2 NamespaceId => Str

The namespace used to indicate that a job is a customer-managed job.

When you specify a value for this parameter, Amazon Web Services IoT
Core sends jobs notifications to MQTT topics that contain the value in
the following format.

C<$aws/things/I<THING_NAME>/jobs/I<JOB_ID>/notify-namespace-I<NAMESPACE_ID>/>

The C<namespaceId> feature is only supported by IoT Greengrass at this
time. For more information, see Setting up IoT Greengrass core devices.
(https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html)



=head2 PresignedUrlConfig => L<Paws::IoT::PresignedUrlConfig>

Configuration information for pre-signed S3 URLs.



=head2 SchedulingConfig => L<Paws::IoT::SchedulingConfig>

The configuration that allows you to schedule a job for a future date
and time in addition to specifying the end behavior for each job
execution.



=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata which can be used to manage the job.



=head2 B<REQUIRED> Targets => ArrayRef[Str|Undef]

A list of things and thing groups to which the job should be sent.



=head2 TargetSelection => Str

Specifies whether the job will continue to run (CONTINUOUS), or will be
complete after all those things specified as targets have completed the
job (SNAPSHOT). If continuous, the job may also be run on a thing when
a change is detected in a target. For example, a job will run on a
thing when the thing is added to a target group, even after the job was
completed by all things originally in the group.

We recommend that you use continuous jobs instead of snapshot jobs for
dynamic thing group targets. By using continuous jobs, devices that
join the group receive the job execution even after the job has been
created.

Valid values are: C<"CONTINUOUS">, C<"SNAPSHOT">

=head2 TimeoutConfig => L<Paws::IoT::TimeoutConfig>

Specifies the amount of time each device has to finish its execution of
the job. The timer is started when the job execution status is set to
C<IN_PROGRESS>. If the job execution status is not set to another
terminal state before the time expires, it will be automatically set to
C<TIMED_OUT>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

