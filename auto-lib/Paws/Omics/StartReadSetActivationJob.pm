
package Paws::Omics::StartReadSetActivationJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::Omics::StartReadSetActivationJobSourceItem]', traits => ['NameInRequest'], request_name => 'sources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartReadSetActivationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/activationjob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::StartReadSetActivationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::StartReadSetActivationJob - Arguments for method StartReadSetActivationJob on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartReadSetActivationJob on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method StartReadSetActivationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartReadSetActivationJob.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $StartReadSetActivationJobResponse = $omics->StartReadSetActivationJob(
      SequenceStoreId => 'MySequenceStoreId',
      Sources         => [
        {
          ReadSetId => 'MyReadSetId',    # min: 10, max: 36

        },
        ...
      ],
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $CreationTime    = $StartReadSetActivationJobResponse->CreationTime;
    my $Id              = $StartReadSetActivationJobResponse->Id;
    my $SequenceStoreId = $StartReadSetActivationJobResponse->SequenceStoreId;
    my $Status          = $StartReadSetActivationJobResponse->Status;

    # Returns a L<Paws::Omics::StartReadSetActivationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/StartReadSetActivationJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

To ensure that jobs don't run multiple times, specify a unique token
for each job.



=head2 B<REQUIRED> SequenceStoreId => Str

The read set's sequence store ID.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::Omics::StartReadSetActivationJobSourceItem>]

The job's source files.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartReadSetActivationJob in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

