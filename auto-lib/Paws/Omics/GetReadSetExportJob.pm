
package Paws::Omics::GetReadSetExportJob;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReadSetExportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/exportjob/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetReadSetExportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReadSetExportJob - Arguments for method GetReadSetExportJob on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReadSetExportJob on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetReadSetExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReadSetExportJob.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetReadSetExportJobResponse = $omics->GetReadSetExportJob(
      Id              => 'MyExportJobId',
      SequenceStoreId => 'MySequenceStoreId',

    );

    # Results:
    my $CompletionTime  = $GetReadSetExportJobResponse->CompletionTime;
    my $CreationTime    = $GetReadSetExportJobResponse->CreationTime;
    my $Destination     = $GetReadSetExportJobResponse->Destination;
    my $Id              = $GetReadSetExportJobResponse->Id;
    my $ReadSets        = $GetReadSetExportJobResponse->ReadSets;
    my $SequenceStoreId = $GetReadSetExportJobResponse->SequenceStoreId;
    my $Status          = $GetReadSetExportJobResponse->Status;
    my $StatusMessage   = $GetReadSetExportJobResponse->StatusMessage;

    # Returns a L<Paws::Omics::GetReadSetExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetReadSetExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The job's ID.



=head2 B<REQUIRED> SequenceStoreId => Str

The job's sequence store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReadSetExportJob in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

