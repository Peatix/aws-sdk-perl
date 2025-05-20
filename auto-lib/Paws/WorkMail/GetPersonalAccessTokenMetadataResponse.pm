
package Paws::WorkMail::GetPersonalAccessTokenMetadataResponse;
  use Moose;
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateLastUsed => (is => 'ro', isa => 'Str');
  has ExpiresTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PersonalAccessTokenId => (is => 'ro', isa => 'Str');
  has Scopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetPersonalAccessTokenMetadataResponse

=head1 ATTRIBUTES


=head2 DateCreated => Str

The date when the Personal Access Token ID was created.


=head2 DateLastUsed => Str

The date when the Personal Access Token ID was last used.


=head2 ExpiresTime => Str

The time when the Personal Access Token ID will expire.


=head2 Name => Str

The Personal Access Token name.


=head2 PersonalAccessTokenId => Str

The Personal Access Token ID.


=head2 Scopes => ArrayRef[Str|Undef]

Lists all the Personal Access Token permissions for a mailbox.


=head2 UserId => Str

The WorkMail User ID.


=head2 _request_id => Str


=cut

1;