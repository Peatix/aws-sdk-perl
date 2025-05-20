
package Paws::Inspector2::EnableResponse;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::Account]', traits => ['NameInRequest'], request_name => 'accounts', required => 1);
  has FailedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::FailedAccount]', traits => ['NameInRequest'], request_name => 'failedAccounts');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::EnableResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Accounts => ArrayRef[L<Paws::Inspector2::Account>]

Information on the accounts that have had Amazon Inspector scans
successfully enabled. Details are provided for each account.


=head2 FailedAccounts => ArrayRef[L<Paws::Inspector2::FailedAccount>]

Information on any accounts for which Amazon Inspector scans could not
be enabled. Details are provided for each account.


=head2 _request_id => Str


=cut

