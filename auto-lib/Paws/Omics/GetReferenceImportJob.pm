
package Paws::Omics::GetReferenceImportJob;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has ReferenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'referenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReferenceImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/referencestore/{referenceStoreId}/importjob/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetReferenceImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReferenceImportJob - Arguments for method GetReferenceImportJob on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReferenceImportJob on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetReferenceImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReferenceImportJob.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetReferenceImportJobResponse = $omics->GetReferenceImportJob(
      Id               => 'MyImportJobId',
      ReferenceStoreId => 'MyReferenceStoreId',

    );

    # Results:
    my $CompletionTime   = $GetReferenceImportJobResponse->CompletionTime;
    my $CreationTime     = $GetReferenceImportJobResponse->CreationTime;
    my $Id               = $GetReferenceImportJobResponse->Id;
    my $ReferenceStoreId = $GetReferenceImportJobResponse->ReferenceStoreId;
    my $RoleArn          = $GetReferenceImportJobResponse->RoleArn;
    my $Sources          = $GetReferenceImportJobResponse->Sources;
    my $Status           = $GetReferenceImportJobResponse->Status;
    my $StatusMessage    = $GetReferenceImportJobResponse->StatusMessage;

    # Returns a L<Paws::Omics::GetReferenceImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetReferenceImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The job's ID.



=head2 B<REQUIRED> ReferenceStoreId => Str

The job's reference store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReferenceImportJob in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

