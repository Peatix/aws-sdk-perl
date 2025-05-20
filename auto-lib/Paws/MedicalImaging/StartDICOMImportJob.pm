
package Paws::MedicalImaging::StartDICOMImportJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataAccessRoleArn', required => 1);
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datastoreId', required => 1);
  has InputOwnerAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputOwnerAccountId');
  has InputS3Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputS3Uri', required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName');
  has OutputS3Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputS3Uri', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDICOMImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/startDICOMImportJob/datastore/{datastoreId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MedicalImaging::StartDICOMImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::StartDICOMImportJob - Arguments for method StartDICOMImportJob on L<Paws::MedicalImaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDICOMImportJob on the
L<AWS Health Imaging|Paws::MedicalImaging> service. Use the attributes of this class
as arguments to method StartDICOMImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDICOMImportJob.

=head1 SYNOPSIS

    my $medical-imaging = Paws->service('MedicalImaging');
    my $StartDICOMImportJobResponse = $medical -imaging->StartDICOMImportJob(
      ClientToken         => 'MyClientToken',
      DataAccessRoleArn   => 'MyRoleArn',
      DatastoreId         => 'MyDatastoreId',
      InputS3Uri          => 'MyS3Uri',
      OutputS3Uri         => 'MyS3Uri',
      InputOwnerAccountId => 'MyAwsAccountId',    # OPTIONAL
      JobName             => 'MyJobName',         # OPTIONAL
    );

    # Results:
    my $DatastoreId = $StartDICOMImportJobResponse->DatastoreId;
    my $JobId       = $StartDICOMImportJobResponse->JobId;
    my $JobStatus   = $StartDICOMImportJobResponse->JobStatus;
    my $SubmittedAt = $StartDICOMImportJobResponse->SubmittedAt;

    # Returns a L<Paws::MedicalImaging::StartDICOMImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging/StartDICOMImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for API idempotency.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants permission
to access medical imaging resources.



=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.



=head2 InputOwnerAccountId => Str

The account ID of the source S3 bucket owner.



=head2 B<REQUIRED> InputS3Uri => Str

The input prefix path for the S3 bucket that contains the DICOM files
to be imported.



=head2 JobName => Str

The import job name.



=head2 B<REQUIRED> OutputS3Uri => Str

The output prefix of the S3 bucket to upload the results of the DICOM
import job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDICOMImportJob in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

