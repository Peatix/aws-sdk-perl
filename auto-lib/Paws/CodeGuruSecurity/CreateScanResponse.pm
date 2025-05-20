
package Paws::CodeGuruSecurity::CreateScanResponse;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Paws::CodeGuruSecurity::ResourceId', traits => ['NameInRequest'], request_name => 'resourceId', required => 1);
  has RunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runId', required => 1);
  has ScanName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanName', required => 1);
  has ScanNameArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanNameArn');
  has ScanState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanState', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::CreateScanResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => L<Paws::CodeGuruSecurity::ResourceId>

The identifier for the resource object that contains resources that
were scanned.


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
=head2 _request_id => Str


=cut

