
package Paws::Inspector2::BatchUpdateMemberEc2DeepInspectionStatusResponse;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::MemberAccountEc2DeepInspectionStatusState]', traits => ['NameInRequest'], request_name => 'accountIds');
  has FailedAccountIds => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::FailedMemberAccountEc2DeepInspectionStatusState]', traits => ['NameInRequest'], request_name => 'failedAccountIds');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::BatchUpdateMemberEc2DeepInspectionStatusResponse

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[L<Paws::Inspector2::MemberAccountEc2DeepInspectionStatusState>]

An array of objects that provide details for each of the accounts that
Amazon Inspector deep inspection status was successfully changed for.


=head2 FailedAccountIds => ArrayRef[L<Paws::Inspector2::FailedMemberAccountEc2DeepInspectionStatusState>]

An array of objects that provide details for each of the accounts that
Amazon Inspector deep inspection status could not be successfully
changed for.


=head2 _request_id => Str


=cut

