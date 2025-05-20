
package Paws::IoTSiteWise::DescribeBulkImportJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBulkImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeBulkImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeBulkImportJob - Arguments for method DescribeBulkImportJob on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBulkImportJob on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeBulkImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBulkImportJob.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeBulkImportJobResponse = $iotsitewise->DescribeBulkImportJob(
      JobId => 'MyID',

    );

    # Results:
    my $AdaptiveIngestion = $DescribeBulkImportJobResponse->AdaptiveIngestion;
    my $DeleteFilesAfterImport =
      $DescribeBulkImportJobResponse->DeleteFilesAfterImport;
    my $ErrorReportLocation =
      $DescribeBulkImportJobResponse->ErrorReportLocation;
    my $Files             = $DescribeBulkImportJobResponse->Files;
    my $JobConfiguration  = $DescribeBulkImportJobResponse->JobConfiguration;
    my $JobCreationDate   = $DescribeBulkImportJobResponse->JobCreationDate;
    my $JobId             = $DescribeBulkImportJobResponse->JobId;
    my $JobLastUpdateDate = $DescribeBulkImportJobResponse->JobLastUpdateDate;
    my $JobName           = $DescribeBulkImportJobResponse->JobName;
    my $JobRoleArn        = $DescribeBulkImportJobResponse->JobRoleArn;
    my $JobStatus         = $DescribeBulkImportJobResponse->JobStatus;

    # Returns a L<Paws::IoTSiteWise::DescribeBulkImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeBulkImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID of the job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBulkImportJob in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

