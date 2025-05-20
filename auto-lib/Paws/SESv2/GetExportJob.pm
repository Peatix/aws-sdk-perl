
package Paws::SESv2::GetExportJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'JobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/export-jobs/{JobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::GetExportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetExportJob - Arguments for method GetExportJob on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExportJob on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExportJob.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetExportJobResponse = $email->GetExportJob(
      JobId => 'MyJobId',

    );

    # Results:
    my $CompletedTimestamp = $GetExportJobResponse->CompletedTimestamp;
    my $CreatedTimestamp   = $GetExportJobResponse->CreatedTimestamp;
    my $ExportDataSource   = $GetExportJobResponse->ExportDataSource;
    my $ExportDestination  = $GetExportJobResponse->ExportDestination;
    my $ExportSourceType   = $GetExportJobResponse->ExportSourceType;
    my $FailureInfo        = $GetExportJobResponse->FailureInfo;
    my $JobId              = $GetExportJobResponse->JobId;
    my $JobStatus          = $GetExportJobResponse->JobStatus;
    my $Statistics         = $GetExportJobResponse->Statistics;

    # Returns a L<Paws::SESv2::GetExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The export job ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExportJob in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

