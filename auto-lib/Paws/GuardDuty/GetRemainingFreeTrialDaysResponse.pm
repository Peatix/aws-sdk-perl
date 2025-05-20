
package Paws::GuardDuty::GetRemainingFreeTrialDaysResponse;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::AccountFreeTrialInfo]', traits => ['NameInRequest'], request_name => 'accounts');
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::UnprocessedAccount]', traits => ['NameInRequest'], request_name => 'unprocessedAccounts');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetRemainingFreeTrialDaysResponse

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[L<Paws::GuardDuty::AccountFreeTrialInfo>]

The member accounts which were included in a request and were processed
successfully.


=head2 UnprocessedAccounts => ArrayRef[L<Paws::GuardDuty::UnprocessedAccount>]

The member account that was included in a request but for which the
request could not be processed.


=head2 _request_id => Str


=cut

