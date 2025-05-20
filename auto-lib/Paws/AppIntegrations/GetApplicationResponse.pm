
package Paws::AppIntegrations::GetApplicationResponse;
  use Moose;
  has ApplicationSourceConfig => (is => 'ro', isa => 'Paws::AppIntegrations::ApplicationSourceConfig');
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Publications => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::Publication]');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::Subscription]');
  has Tags => (is => 'ro', isa => 'Paws::AppIntegrations::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::GetApplicationResponse

=head1 ATTRIBUTES


=head2 ApplicationSourceConfig => L<Paws::AppIntegrations::ApplicationSourceConfig>

The configuration for where the application should be loaded from.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the Application.


=head2 CreatedTime => Str

The created time of the Application.


=head2 Description => Str

The description of the application.


=head2 Id => Str

A unique identifier for the Application.


=head2 LastModifiedTime => Str

The last modified time of the Application.


=head2 Name => Str

The name of the application.


=head2 Namespace => Str

The namespace of the application.


=head2 Permissions => ArrayRef[Str|Undef]

The configuration of events or requests that the application has access
to.


=head2 Publications => ArrayRef[L<Paws::AppIntegrations::Publication>]

The events that the application publishes.


=head2 Subscriptions => ArrayRef[L<Paws::AppIntegrations::Subscription>]

The events that the application subscribes.


=head2 Tags => L<Paws::AppIntegrations::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.


=head2 _request_id => Str


=cut

