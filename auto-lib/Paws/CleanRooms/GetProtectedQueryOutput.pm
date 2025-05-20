
package Paws::CleanRooms::GetProtectedQueryOutput;
  use Moose;
  has ProtectedQuery => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedQuery', traits => ['NameInRequest'], request_name => 'protectedQuery', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetProtectedQueryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProtectedQuery => L<Paws::CleanRooms::ProtectedQuery>

The query processing metadata.


=head2 _request_id => Str


=cut

