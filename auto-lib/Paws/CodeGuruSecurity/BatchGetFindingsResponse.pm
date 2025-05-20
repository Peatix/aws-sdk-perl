
package Paws::CodeGuruSecurity::BatchGetFindingsResponse;
  use Moose;
  has FailedFindings => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruSecurity::BatchGetFindingsError]', traits => ['NameInRequest'], request_name => 'failedFindings', required => 1);
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruSecurity::Finding]', traits => ['NameInRequest'], request_name => 'findings', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::BatchGetFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedFindings => ArrayRef[L<Paws::CodeGuruSecurity::BatchGetFindingsError>]

A list of errors for individual findings which were not fetched. Each
BatchGetFindingsError contains the C<scanName>, C<findingId>,
C<errorCode> and error C<message>.


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::CodeGuruSecurity::Finding>]

A list of all findings which were successfully fetched.


=head2 _request_id => Str


=cut

