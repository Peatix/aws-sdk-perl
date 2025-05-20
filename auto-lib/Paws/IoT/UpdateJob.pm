
package Paws::IoT::UpdateJob;
  use Moose;
  has AbortConfig => (is => 'ro', isa => 'Paws::IoT::AbortConfig', traits => ['NameInRequest'], request_name => 'abortConfig');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has JobExecutionsRetryConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRetryConfig', traits => ['NameInRequest'], request_name => 'jobExecutionsRetryConfig');
  has JobExecutionsRolloutConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRolloutConfig', traits => ['NameInRequest'], request_name => 'jobExecutionsRolloutConfig');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has NamespaceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespaceId');
  has PresignedUrlConfig => (is => 'ro', isa => 'Paws::IoT::PresignedUrlConfig', traits => ['NameInRequest'], request_name => 'presignedUrlConfig');
  has TimeoutConfig => (is => 'ro', isa => 'Paws::IoT::TimeoutConfig', traits => ['NameInRequest'], request_name => 'timeoutConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateJob - Arguments for method UpdateJob on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJob on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJob.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->UpdateJob(
      JobId       => 'MyJobId',
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
      Description              => 'MyJobDescription',    # OPTIONAL
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
      NamespaceId        => 'MyNamespaceId',    # OPTIONAL
      PresignedUrlConfig => {
        ExpiresInSec => 1,                      # min: 60, max: 3600; OPTIONAL
        RoleArn      => 'MyRoleArn',            # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      TimeoutConfig => {
        InProgressTimeoutInMinutes => 1,    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateJob>

=head1 ATTRIBUTES


=head2 AbortConfig => L<Paws::IoT::AbortConfig>

Allows you to create criteria to abort a job.



=head2 Description => Str

A short text description of the job.



=head2 JobExecutionsRetryConfig => L<Paws::IoT::JobExecutionsRetryConfig>

Allows you to create the criteria to retry a job.



=head2 JobExecutionsRolloutConfig => L<Paws::IoT::JobExecutionsRolloutConfig>

Allows you to create a staged rollout of the job.



=head2 B<REQUIRED> JobId => Str

The ID of the job to be updated.



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



=head2 TimeoutConfig => L<Paws::IoT::TimeoutConfig>

Specifies the amount of time each device has to finish its execution of
the job. The timer is started when the job execution status is set to
C<IN_PROGRESS>. If the job execution status is not set to another
terminal state before the time expires, it will be automatically set to
C<TIMED_OUT>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJob in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

