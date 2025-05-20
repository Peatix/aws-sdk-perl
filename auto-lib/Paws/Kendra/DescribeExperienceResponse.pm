
package Paws::Kendra::DescribeExperienceResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Kendra::ExperienceConfiguration');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::ExperienceEndpoint]');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeExperienceResponse

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::Kendra::ExperienceConfiguration>

Shows the configuration information for your Amazon Kendra experience.
This includes C<ContentSourceConfiguration>, which specifies the data
source IDs and/or FAQ IDs, and C<UserIdentityConfiguration>, which
specifies the user or group information to grant access to your Amazon
Kendra experience.


=head2 CreatedAt => Str

The Unix timestamp when your Amazon Kendra experience was created.


=head2 Description => Str

Shows the description for your Amazon Kendra experience.


=head2 Endpoints => ArrayRef[L<Paws::Kendra::ExperienceEndpoint>]

Shows the endpoint URLs for your Amazon Kendra experiences. The URLs
are unique and fully hosted by Amazon Web Services.


=head2 ErrorMessage => Str

The reason your Amazon Kendra experience could not properly process.


=head2 Id => Str

Shows the identifier of your Amazon Kendra experience.


=head2 IndexId => Str

Shows the identifier of the index for your Amazon Kendra experience.


=head2 Name => Str

Shows the name of your Amazon Kendra experience.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role with permission to
access the C<Query> API, C<QuerySuggestions> API, C<SubmitFeedback>
API, and IAM Identity Center that stores your users and groups
information.


=head2 Status => Str

The current processing status of your Amazon Kendra experience. When
the status is C<ACTIVE>, your Amazon Kendra experience is ready to use.
When the status is C<FAILED>, the C<ErrorMessage> field contains the
reason that this failed.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">
=head2 UpdatedAt => Str

The Unix timestamp when your Amazon Kendra experience was last updated.


=head2 _request_id => Str


=cut

1;