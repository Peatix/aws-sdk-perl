
package Paws::Inspector2::ListMembersResponse;
  use Moose;
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::Member]', traits => ['NameInRequest'], request_name => 'members');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[L<Paws::Inspector2::Member>]

An object that contains details for each member account.


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 _request_id => Str


=cut

