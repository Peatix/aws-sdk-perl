
package Paws::Omics::StartReferenceImportJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ReferenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'referenceStoreId', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::Omics::StartReferenceImportJobSourceItem]', traits => ['NameInRequest'], request_name => 'sources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartReferenceImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/referencestore/{referenceStoreId}/importjob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::StartReferenceImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::StartReferenceImportJob - Arguments for method StartReferenceImportJob on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartReferenceImportJob on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method StartReferenceImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartReferenceImportJob.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $StartReferenceImportJobResponse = $omics->StartReferenceImportJob(
      ReferenceStoreId => 'MyReferenceStoreId',
      RoleArn          => 'MyRoleArn',
      Sources          => [
        {
          Name        => 'MyReferenceName',         # min: 3, max: 255
          SourceFile  => 'MyS3Uri',
          Description => 'MyReferenceDescription',  # min: 1, max: 255; OPTIONAL
          Tags        => {
            'MyTagKey' => 'MyTagValue', # key: min: 1, max: 128, value: max: 256
          },    # OPTIONAL
        },
        ...
      ],
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $CreationTime     = $StartReferenceImportJobResponse->CreationTime;
    my $Id               = $StartReferenceImportJobResponse->Id;
    my $ReferenceStoreId = $StartReferenceImportJobResponse->ReferenceStoreId;
    my $RoleArn          = $StartReferenceImportJobResponse->RoleArn;
    my $Status           = $StartReferenceImportJobResponse->Status;

    # Returns a L<Paws::Omics::StartReferenceImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/StartReferenceImportJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

To ensure that jobs don't run multiple times, specify a unique token
for each job.



=head2 B<REQUIRED> ReferenceStoreId => Str

The job's reference store ID.



=head2 B<REQUIRED> RoleArn => Str

A service role for the job.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::Omics::StartReferenceImportJobSourceItem>]

The job's source files.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartReferenceImportJob in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

