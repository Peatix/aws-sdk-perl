
package Paws::Inspector2::GetFindingsReportStatus;
  use Moose;
  has ReportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFindingsReportStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reporting/status/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::GetFindingsReportStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::GetFindingsReportStatus - Arguments for method GetFindingsReportStatus on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFindingsReportStatus on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method GetFindingsReportStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFindingsReportStatus.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $GetFindingsReportStatusResponse = $inspector2->GetFindingsReportStatus(
      ReportId => 'MyReportId',    # OPTIONAL
    );

    # Results:
    my $Destination    = $GetFindingsReportStatusResponse->Destination;
    my $ErrorCode      = $GetFindingsReportStatusResponse->ErrorCode;
    my $ErrorMessage   = $GetFindingsReportStatusResponse->ErrorMessage;
    my $FilterCriteria = $GetFindingsReportStatusResponse->FilterCriteria;
    my $ReportId       = $GetFindingsReportStatusResponse->ReportId;
    my $Status         = $GetFindingsReportStatusResponse->Status;

    # Returns a L<Paws::Inspector2::GetFindingsReportStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/GetFindingsReportStatus>

=head1 ATTRIBUTES


=head2 ReportId => Str

The ID of the report to retrieve the status of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFindingsReportStatus in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

