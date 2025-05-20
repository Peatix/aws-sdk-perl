
package Paws::QBusiness::GetGroupResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::QBusiness::GroupStatusDetail', traits => ['NameInRequest'], request_name => 'status');
  has StatusHistory => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::GroupStatusDetail]', traits => ['NameInRequest'], request_name => 'statusHistory');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetGroupResponse

=head1 ATTRIBUTES


=head2 Status => L<Paws::QBusiness::GroupStatusDetail>

The current status of the group.


=head2 StatusHistory => ArrayRef[L<Paws::QBusiness::GroupStatusDetail>]

The status history of the group.


=head2 _request_id => Str


=cut

