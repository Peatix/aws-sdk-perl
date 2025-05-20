
package Paws::CodeGuruSecurity::GetScanResponse;
  use Moose;
  has AnalysisType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analysisType', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has NumberOfRevisions => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfRevisions');
  has RunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runId', required => 1);
  has ScanName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanName', required => 1);
  has ScanNameArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanNameArn');
  has ScanState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanState', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::GetScanResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisType => Str

The type of analysis CodeGuru Security performed in the scan, either
C<Security> or C<All>. The C<Security> type only generates findings
related to security. The C<All> type generates both security findings
and quality findings.

Valid values are: C<"Security">, C<"All">
=head2 B<REQUIRED> CreatedAt => Str

The time the scan was created.


=head2 ErrorMessage => Str

Details about the error that causes a scan to fail to be retrieved.


=head2 NumberOfRevisions => Int

The number of times a scan has been re-run on a revised resource.


=head2 B<REQUIRED> RunId => Str

UUID that identifies the individual scan run.


=head2 B<REQUIRED> ScanName => Str

The name of the scan.


=head2 ScanNameArn => Str

The ARN for the scan name.


=head2 B<REQUIRED> ScanState => Str

The current state of the scan. Returns either C<InProgress>,
C<Successful>, or C<Failed>.

Valid values are: C<"InProgress">, C<"Successful">, C<"Failed">
=head2 UpdatedAt => Str

The time when the scan was last updated. Only available for C<STANDARD>
scan types.


=head2 _request_id => Str


=cut

