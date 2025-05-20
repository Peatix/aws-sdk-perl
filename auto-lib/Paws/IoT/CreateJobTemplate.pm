
package Paws::IoT::CreateJobTemplate;
  use Moose;
  has AbortConfig => (is => 'ro', isa => 'Paws::IoT::AbortConfig', traits => ['NameInRequest'], request_name => 'abortConfig');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has DestinationPackageVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'destinationPackageVersions');
  has Document => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'document');
  has DocumentSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentSource');
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn');
  has JobExecutionsRetryConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRetryConfig', traits => ['NameInRequest'], request_name => 'jobExecutionsRetryConfig');
  has JobExecutionsRolloutConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRolloutConfig', traits => ['NameInRequest'], request_name => 'jobExecutionsRolloutConfig');
  has JobTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobTemplateId', required => 1);
  has MaintenanceWindows => (is => 'ro', isa => 'ArrayRef[Paws::IoT::MaintenanceWindow]', traits => ['NameInRequest'], request_name => 'maintenanceWindows');
  has PresignedUrlConfig => (is => 'ro', isa => 'Paws::IoT::PresignedUrlConfig', traits => ['NameInRequest'], request_name => 'presignedUrlConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has TimeoutConfig => (is => 'ro', isa => 'Paws::IoT::TimeoutConfig', traits => ['NameInRequest'], request_name => 'timeoutConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJobTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/job-templates/{jobTemplateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateJobTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateJobTemplate - Arguments for method CreateJobTemplate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJobTemplate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateJobTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJobTemplate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateJobTemplateResponse = $iot->CreateJobTemplate(
      Description   => 'MyJobDescription',
      JobTemplateId => 'MyJobTemplateId',
      AbortConfig   => {
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
      DestinationPackageVersions => [
        'MyPackageVersionArn', ...    # min: 1, max: 1600
      ],    # OPTIONAL
      Document                 => 'MyJobDocument',          # OPTIONAL
      DocumentSource           => 'MyJobDocumentSource',    # OPTIONAL
      JobArn                   => 'MyJobArn',               # OPTIONAL
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
      MaintenanceWindows => [
        {
          DurationInMinutes => 1,                     # min: 1, max: 1430
          StartTime         => 'MyCronExpression',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      PresignedUrlConfig => {
        ExpiresInSec => 1,              # min: 60, max: 3600; OPTIONAL
        RoleArn      => 'MyRoleArn',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TimeoutConfig => {
        InProgressTimeoutInMinutes => 1,    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $JobTemplateArn = $CreateJobTemplateResponse->JobTemplateArn;
    my $JobTemplateId  = $CreateJobTemplateResponse->JobTemplateId;

    # Returns a L<Paws::IoT::CreateJobTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateJobTemplate>

=head1 ATTRIBUTES


=head2 AbortConfig => L<Paws::IoT::AbortConfig>





=head2 B<REQUIRED> Description => Str

A description of the job document.



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



=head2 DocumentSource => Str

An S3 link, or S3 object URL, to the job document. The link is an
Amazon S3 object URL and is required if you don't specify a value for
C<document>.

For example, C<--document-source
https://s3.I<region-code>.amazonaws.com/example-firmware/device-firmware.1.0>

For more information, see Methods for accessing a bucket
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-bucket-intro.html).



=head2 JobArn => Str

The ARN of the job to use as the basis for the job template.



=head2 JobExecutionsRetryConfig => L<Paws::IoT::JobExecutionsRetryConfig>

Allows you to create the criteria to retry a job.



=head2 JobExecutionsRolloutConfig => L<Paws::IoT::JobExecutionsRolloutConfig>





=head2 B<REQUIRED> JobTemplateId => Str

A unique identifier for the job template. We recommend using a UUID.
Alpha-numeric characters, "-", and "_" are valid for use here.



=head2 MaintenanceWindows => ArrayRef[L<Paws::IoT::MaintenanceWindow>]

Allows you to configure an optional maintenance window for the rollout
of a job document to all devices in the target group for a job.



=head2 PresignedUrlConfig => L<Paws::IoT::PresignedUrlConfig>





=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata that can be used to manage the job template.



=head2 TimeoutConfig => L<Paws::IoT::TimeoutConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJobTemplate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

