
package Paws::Macie2::GetAllowListResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Criteria => (is => 'ro', isa => 'Paws::Macie2::AllowListCriteria', traits => ['NameInRequest'], request_name => 'criteria');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Paws::Macie2::AllowListStatus', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetAllowListResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the allow list.


=head2 CreatedAt => Str

The date and time, in UTC and extended ISO 8601 format, when the allow
list was created in Amazon Macie.


=head2 Criteria => L<Paws::Macie2::AllowListCriteria>

The criteria that specify the text or text pattern to ignore. The
criteria can be the location and name of an S3 object that lists
specific text to ignore (s3WordsList), or a regular expression (regex)
that defines a text pattern to ignore.


=head2 Description => Str

The custom description of the allow list.


=head2 Id => Str

The unique identifier for the allow list.


=head2 Name => Str

The custom name of the allow list.


=head2 Status => L<Paws::Macie2::AllowListStatus>

The current status of the allow list, which indicates whether Amazon
Macie can access and use the list's criteria.


=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that specifies which tags (keys and values)
are associated with the allow list.


=head2 UpdatedAt => Str

The date and time, in UTC and extended ISO 8601 format, when the allow
list's settings were most recently changed in Amazon Macie.


=head2 _request_id => Str


=cut

