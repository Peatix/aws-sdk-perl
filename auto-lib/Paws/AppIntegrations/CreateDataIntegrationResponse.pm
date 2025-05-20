
package Paws::AppIntegrations::CreateDataIntegrationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FileConfiguration => (is => 'ro', isa => 'Paws::AppIntegrations::FileConfiguration');
  has Id => (is => 'ro', isa => 'Str');
  has KmsKey => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ObjectConfiguration => (is => 'ro', isa => 'Paws::AppIntegrations::ObjectConfiguration');
  has ScheduleConfiguration => (is => 'ro', isa => 'Paws::AppIntegrations::ScheduleConfiguration');
  has SourceURI => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::AppIntegrations::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::CreateDataIntegrationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN)


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).


=head2 Description => Str

A description of the DataIntegration.


=head2 FileConfiguration => L<Paws::AppIntegrations::FileConfiguration>

The configuration for what files should be pulled from the source.


=head2 Id => Str

A unique identifier.


=head2 KmsKey => Str

The KMS key ARN for the DataIntegration.


=head2 Name => Str

The name of the DataIntegration.


=head2 ObjectConfiguration => L<Paws::AppIntegrations::ObjectConfiguration>

The configuration for what data should be pulled from the source.


=head2 ScheduleConfiguration => L<Paws::AppIntegrations::ScheduleConfiguration>

The name of the data and how often it should be pulled from the source.


=head2 SourceURI => Str

The URI of the data source.


=head2 Tags => L<Paws::AppIntegrations::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.


=head2 _request_id => Str


=cut

