
package Paws::CodeGuruSecurity::CreateScan;
  use Moose;
  has AnalysisType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analysisType');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ResourceId => (is => 'ro', isa => 'Paws::CodeGuruSecurity::ResourceId', traits => ['NameInRequest'], request_name => 'resourceId', required => 1);
  has ScanName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanName', required => 1);
  has ScanType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanType');
  has Tags => (is => 'ro', isa => 'Paws::CodeGuruSecurity::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateScan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/scans');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruSecurity::CreateScanResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::CreateScan - Arguments for method CreateScan on L<Paws::CodeGuruSecurity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateScan on the
L<Amazon CodeGuru Security|Paws::CodeGuruSecurity> service. Use the attributes of this class
as arguments to method CreateScan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateScan.

=head1 SYNOPSIS

    my $codeguru-security = Paws->service('CodeGuruSecurity');
    my $CreateScanResponse = $codeguru -security->CreateScan(
      ResourceId => {
        CodeArtifactId => 'MyUuid',    # OPTIONAL
      },
      ScanName     => 'MyScanName',
      AnalysisType => 'Security',         # OPTIONAL
      ClientToken  => 'MyClientToken',    # OPTIONAL
      ScanType     => 'Standard',         # OPTIONAL
      Tags         => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ResourceId  = $CreateScanResponse->ResourceId;
    my $RunId       = $CreateScanResponse->RunId;
    my $ScanName    = $CreateScanResponse->ScanName;
    my $ScanNameArn = $CreateScanResponse->ScanNameArn;
    my $ScanState   = $CreateScanResponse->ScanState;

    # Returns a L<Paws::CodeGuruSecurity::CreateScanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-security/CreateScan>

=head1 ATTRIBUTES


=head2 AnalysisType => Str

The type of analysis you want CodeGuru Security to perform in the scan,
either C<Security> or C<All>. The C<Security> type only generates
findings related to security. The C<All> type generates both security
findings and quality findings. Defaults to C<Security> type if missing.

Valid values are: C<"Security">, C<"All">

=head2 ClientToken => Str

The idempotency token for the request. Amazon CodeGuru Security uses
this value to prevent the accidental creation of duplicate scans if
there are failures and retries.



=head2 B<REQUIRED> ResourceId => L<Paws::CodeGuruSecurity::ResourceId>

The identifier for the resource object to be scanned.



=head2 B<REQUIRED> ScanName => Str

The unique name that CodeGuru Security uses to track revisions across
multiple scans of the same resource. Only allowed for a C<STANDARD>
scan type.



=head2 ScanType => Str

The type of scan, either C<Standard> or C<Express>. Defaults to
C<Standard> type if missing.

C<Express> scans run on limited resources and use a limited set of
detectors to analyze your code in near-real time. C<Standard> scans
have standard resource limits and use the full set of detectors to
analyze your code.

Valid values are: C<"Standard">, C<"Express">

=head2 Tags => L<Paws::CodeGuruSecurity::TagMap>

An array of key-value pairs used to tag a scan. A tag is a custom
attribute label with two parts:

=over

=item *

A tag key. For example, C<CostCenter>, C<Environment>, or C<Secret>.
Tag keys are case sensitive.

=item *

An optional tag value field. For example, C<111122223333>,
C<Production>, or a team name. Omitting the tag value is the same as
using an empty string. Tag values are case sensitive.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateScan in L<Paws::CodeGuruSecurity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

