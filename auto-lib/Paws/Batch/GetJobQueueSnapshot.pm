
package Paws::Batch::GetJobQueueSnapshot;
  use Moose;
  has JobQueue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobQueue', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJobQueueSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/getjobqueuesnapshot');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::GetJobQueueSnapshotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::GetJobQueueSnapshot - Arguments for method GetJobQueueSnapshot on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJobQueueSnapshot on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method GetJobQueueSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJobQueueSnapshot.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    my $GetJobQueueSnapshotResponse = $batch->GetJobQueueSnapshot(
      JobQueue => 'MyString',

    );

    # Results:
    my $FrontOfQueue = $GetJobQueueSnapshotResponse->FrontOfQueue;

    # Returns a L<Paws::Batch::GetJobQueueSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/GetJobQueueSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobQueue => Str

The job queueE<rsquo>s name or full queue Amazon Resource Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJobQueueSnapshot in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

