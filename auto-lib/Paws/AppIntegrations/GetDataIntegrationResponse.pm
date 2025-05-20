
package Paws::AppIntegrations::GetDataIntegrationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
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

Paws::AppIntegrations::GetDataIntegrationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) for the DataIntegration.


=head2 Description => Str

The KMS key ARN for the DataIntegration.


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

