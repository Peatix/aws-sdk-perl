
package Paws::CodeCatalyst::UpdateSpaceResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::UpdateSpaceResponse

=head1 ATTRIBUTES


=head2 Description => Str

The description of the space.


=head2 DisplayName => Str

The friendly name of the space displayed to users in Amazon
CodeCatalyst.


=head2 Name => Str

The name of the space.


=head2 _request_id => Str


=cut

