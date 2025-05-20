
package Paws::Inspector2::BatchGetAccountStatusResponse;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::AccountState]', traits => ['NameInRequest'], request_name => 'accounts', required => 1);
  has FailedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::FailedAccount]', traits => ['NameInRequest'], request_name => 'failedAccounts');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::BatchGetAccountStatusResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Accounts => ArrayRef[L<Paws::Inspector2::AccountState>]

An array of objects that provide details on the status of Amazon
Inspector for each of the requested accounts.


=head2 FailedAccounts => ArrayRef[L<Paws::Inspector2::FailedAccount>]

An array of objects detailing any accounts that failed to enable Amazon
Inspector and why.


=head2 _request_id => Str


=cut

