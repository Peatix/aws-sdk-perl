
package Paws::QApps::GetQAppOutput;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppDefinition => (is => 'ro', isa => 'Paws::QApps::AppDefinition', traits => ['NameInRequest'], request_name => 'appDefinition', required => 1);
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId', required => 1);
  has AppVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InitialPrompt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'initialPrompt');
  has RequiredCapabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'requiredCapabilities');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::GetQAppOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

The Amazon Resource Name (ARN) of the Q App.


=head2 B<REQUIRED> AppDefinition => L<Paws::QApps::AppDefinition>

The full definition of the Q App, specifying the cards and flow.


=head2 B<REQUIRED> AppId => Str

The unique identifier of the Q App.


=head2 B<REQUIRED> AppVersion => Int

The version of the Q App.


=head2 B<REQUIRED> CreatedAt => Str

The date and time the Q App was created.


=head2 B<REQUIRED> CreatedBy => Str

The user who created the Q App.


=head2 Description => Str

The description of the Q App.


=head2 InitialPrompt => Str

The initial prompt displayed when the Q App is started.


=head2 RequiredCapabilities => ArrayRef[Str|Undef]

The capabilities required to run the Q App, such as file upload or
third-party integrations.


=head2 B<REQUIRED> Status => Str

The status of the Q App.

Valid values are: C<"PUBLISHED">, C<"DRAFT">, C<"DELETED">
=head2 B<REQUIRED> Title => Str

The title of the Q App.


=head2 B<REQUIRED> UpdatedAt => Str

The date and time the Q App was last updated.


=head2 B<REQUIRED> UpdatedBy => Str

The user who last updated the Q App.


=head2 _request_id => Str


=cut

