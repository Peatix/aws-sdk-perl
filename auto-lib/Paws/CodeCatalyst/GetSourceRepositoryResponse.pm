
package Paws::CodeCatalyst::GetSourceRepositoryResponse;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastUpdatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedTime', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spaceName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetSourceRepositoryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedTime => Str

The time the source repository was created, in coordinated universal
time (UTC) timestamp format as specified in RFC 3339
(https://www.rfc-editor.org/rfc/rfc3339#section-5.6).


=head2 Description => Str

The description of the source repository.


=head2 B<REQUIRED> LastUpdatedTime => Str

The time the source repository was last updated, in coordinated
universal time (UTC) timestamp format as specified in RFC 3339
(https://www.rfc-editor.org/rfc/rfc3339#section-5.6).


=head2 B<REQUIRED> Name => Str

The name of the source repository.


=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.


=head2 B<REQUIRED> SpaceName => Str

The name of the space.


=head2 _request_id => Str


=cut

