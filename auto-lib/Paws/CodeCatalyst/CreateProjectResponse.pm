
package Paws::CodeCatalyst::CreateProjectResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spaceName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::CreateProjectResponse

=head1 ATTRIBUTES


=head2 Description => Str

The description of the project.


=head2 DisplayName => Str

The friendly name of the project.


=head2 B<REQUIRED> Name => Str

The name of the project in the space.


=head2 SpaceName => Str

The name of the space.


=head2 _request_id => Str


=cut

