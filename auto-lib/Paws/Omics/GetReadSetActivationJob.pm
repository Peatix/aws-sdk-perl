
package Paws::Omics::GetReadSetActivationJob;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReadSetActivationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/activationjob/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetReadSetActivationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReadSetActivationJob - Arguments for method GetReadSetActivationJob on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReadSetActivationJob on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetReadSetActivationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReadSetActivationJob.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetReadSetActivationJobResponse = $omics->GetReadSetActivationJob(
      Id              => 'MyActivationJobId',
      SequenceStoreId => 'MySequenceStoreId',

    );

    # Results:
    my $CompletionTime  = $GetReadSetActivationJobResponse->CompletionTime;
    my $CreationTime    = $GetReadSetActivationJobResponse->CreationTime;
    my $Id              = $GetReadSetActivationJobResponse->Id;
    my $SequenceStoreId = $GetReadSetActivationJobResponse->SequenceStoreId;
    my $Sources         = $GetReadSetActivationJobResponse->Sources;
    my $Status          = $GetReadSetActivationJobResponse->Status;
    my $StatusMessage   = $GetReadSetActivationJobResponse->StatusMessage;

    # Returns a L<Paws::Omics::GetReadSetActivationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetReadSetActivationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The job's ID.



=head2 B<REQUIRED> SequenceStoreId => Str

The job's sequence store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReadSetActivationJob in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

