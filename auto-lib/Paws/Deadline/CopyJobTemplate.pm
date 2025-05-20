
package Paws::Deadline::CopyJobTemplate;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has TargetS3Location => (is => 'ro', isa => 'Paws::Deadline::S3Location', traits => ['NameInRequest'], request_name => 'targetS3Location', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyJobTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/template');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CopyJobTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CopyJobTemplate - Arguments for method CopyJobTemplate on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyJobTemplate on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CopyJobTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyJobTemplate.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CopyJobTemplateResponse = $deadline->CopyJobTemplate(
      FarmId           => 'MyFarmId',
      JobId            => 'MyJobId',
      QueueId          => 'MyQueueId',
      TargetS3Location => {
        BucketName => 'MyS3BucketName',    # min: 1, max: 255
        Key        => 'MyS3Key',           # min: 1, max: 1024

      },

    );

    # Results:
    my $TemplateType = $CopyJobTemplateResponse->TemplateType;

    # Returns a L<Paws::Deadline::CopyJobTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CopyJobTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID to copy.



=head2 B<REQUIRED> JobId => Str

The job ID to copy.



=head2 B<REQUIRED> QueueId => Str

The queue ID to copy.



=head2 B<REQUIRED> TargetS3Location => L<Paws::Deadline::S3Location>

The Amazon S3 bucket name and key where you would like to add a copy of
the job template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyJobTemplate in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

