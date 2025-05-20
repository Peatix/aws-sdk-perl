
package Paws::Inspector2::GetCisScanReport;
  use Moose;
  has ReportFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportFormat');
  has ScanArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanArn', required => 1);
  has TargetAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targetAccounts');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCisScanReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cis/scan/report/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::GetCisScanReportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::GetCisScanReport - Arguments for method GetCisScanReport on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCisScanReport on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method GetCisScanReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCisScanReport.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $GetCisScanReportResponse = $inspector2->GetCisScanReport(
      ScanArn        => 'MyCisScanArn',
      ReportFormat   => 'PDF',            # OPTIONAL
      TargetAccounts => [
        'MyAccountId', ...                # min: 12, max: 12
      ],    # OPTIONAL
    );

    # Results:
    my $Status = $GetCisScanReportResponse->Status;
    my $Url    = $GetCisScanReportResponse->Url;

    # Returns a L<Paws::Inspector2::GetCisScanReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/GetCisScanReport>

=head1 ATTRIBUTES


=head2 ReportFormat => Str

The format of the report. Valid values are C<PDF> and C<CSV>. If no
value is specified, the report format defaults to C<PDF>.

Valid values are: C<"PDF">, C<"CSV">

=head2 B<REQUIRED> ScanArn => Str

The scan ARN.



=head2 TargetAccounts => ArrayRef[Str|Undef]

The target accounts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCisScanReport in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

