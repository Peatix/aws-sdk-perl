
package Paws::Inspector2::BatchGetFreeTrialInfoResponse;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::FreeTrialAccountInfo]', traits => ['NameInRequest'], request_name => 'accounts', required => 1);
  has FailedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::FreeTrialInfoError]', traits => ['NameInRequest'], request_name => 'failedAccounts', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::BatchGetFreeTrialInfoResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Accounts => ArrayRef[L<Paws::Inspector2::FreeTrialAccountInfo>]

An array of objects that provide Amazon Inspector free trial details
for each of the requested accounts.


=head2 B<REQUIRED> FailedAccounts => ArrayRef[L<Paws::Inspector2::FreeTrialInfoError>]

An array of objects detailing any accounts that free trial data could
not be returned for.


=head2 _request_id => Str


=cut

