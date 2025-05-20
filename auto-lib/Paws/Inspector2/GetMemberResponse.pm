
package Paws::Inspector2::GetMemberResponse;
  use Moose;
  has Member => (is => 'ro', isa => 'Paws::Inspector2::Member', traits => ['NameInRequest'], request_name => 'member');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::GetMemberResponse

=head1 ATTRIBUTES


=head2 Member => L<Paws::Inspector2::Member>

Details of the retrieved member account.


=head2 _request_id => Str


=cut

