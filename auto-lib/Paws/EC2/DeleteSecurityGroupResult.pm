
package Paws::EC2::DeleteSecurityGroupResult;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', request_name => 'groupId', traits => ['NameInRequest',]);
  has Return => (is => 'ro', isa => 'Bool', request_name => 'return', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteSecurityGroupResult

=head1 ATTRIBUTES


=head2 GroupId => Str

The ID of the deleted security group.


=head2 Return => Bool

Returns C<true> if the request succeeds; otherwise, returns an error.


=head2 _request_id => Str


=cut

