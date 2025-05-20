
package Paws::CodeGuruSecurity::GetScan;
  use Moose;
  has RunId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'runId');
  has ScanName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'scanName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetScan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/scans/{scanName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruSecurity::GetScanResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::GetScan - Arguments for method GetScan on L<Paws::CodeGuruSecurity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetScan on the
L<Amazon CodeGuru Security|Paws::CodeGuruSecurity> service. Use the attributes of this class
as arguments to method GetScan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetScan.

=head1 SYNOPSIS

    my $codeguru-security = Paws->service('CodeGuruSecurity');
    my $GetScanResponse = $codeguru -security->GetScan(
      ScanName => 'MyScanName',
      RunId    => 'MyUuid',       # OPTIONAL
    );

    # Results:
    my $AnalysisType      = $GetScanResponse->AnalysisType;
    my $CreatedAt         = $GetScanResponse->CreatedAt;
    my $ErrorMessage      = $GetScanResponse->ErrorMessage;
    my $NumberOfRevisions = $GetScanResponse->NumberOfRevisions;
    my $RunId             = $GetScanResponse->RunId;
    my $ScanName          = $GetScanResponse->ScanName;
    my $ScanNameArn       = $GetScanResponse->ScanNameArn;
    my $ScanState         = $GetScanResponse->ScanState;
    my $UpdatedAt         = $GetScanResponse->UpdatedAt;

    # Returns a L<Paws::CodeGuruSecurity::GetScanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-security/GetScan>

=head1 ATTRIBUTES


=head2 RunId => Str

UUID that identifies the individual scan run you want to view details
about. You retrieve this when you call the C<CreateScan> operation.
Defaults to the latest scan run if missing.



=head2 B<REQUIRED> ScanName => Str

The name of the scan you want to view details about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetScan in L<Paws::CodeGuruSecurity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

