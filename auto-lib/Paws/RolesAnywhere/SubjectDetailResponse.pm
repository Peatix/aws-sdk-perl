
package Paws::RolesAnywhere::SubjectDetailResponse;
  use Moose;
  has Subject => (is => 'ro', isa => 'Paws::RolesAnywhere::SubjectDetail', traits => ['NameInRequest'], request_name => 'subject');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::SubjectDetailResponse

=head1 ATTRIBUTES


=head2 Subject => L<Paws::RolesAnywhere::SubjectDetail>

The state of the subject after a read or write operation.


=head2 _request_id => Str


=cut

