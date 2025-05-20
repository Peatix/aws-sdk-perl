
package Paws::WorkMail::DescribeEntityResponse;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeEntityResponse

=head1 ATTRIBUTES


=head2 EntityId => Str

The entity ID under which the entity exists.


=head2 Name => Str

Username, GroupName, or ResourceName based on entity type.


=head2 Type => Str

Entity type.

Valid values are: C<"GROUP">, C<"USER">, C<"RESOURCE">
=head2 _request_id => Str


=cut

1;