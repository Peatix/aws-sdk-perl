
package Paws::SecurityIR::BatchGetMemberAccountDetailsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::GetMembershipAccountDetailError]', traits => ['NameInRequest'], request_name => 'errors');
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::GetMembershipAccountDetailItem]', traits => ['NameInRequest'], request_name => 'items');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::BatchGetMemberAccountDetailsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::SecurityIR::GetMembershipAccountDetailError>]

The response element providing errors messages for requests to
GetMembershipAccountDetails.


=head2 Items => ArrayRef[L<Paws::SecurityIR::GetMembershipAccountDetailItem>]

The response element providing responses for requests to
GetMembershipAccountDetails.


=head2 _request_id => Str


=cut

