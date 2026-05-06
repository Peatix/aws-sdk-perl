
package Paws::OpenSearch::GetApplicationResponse;
  use Moose;
  has AppConfigs => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::AppConfig]', traits => ['NameInRequest'], request_name => 'appConfigs');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DataSources => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DataSource]', traits => ['NameInRequest'], request_name => 'dataSources');
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endpoint');
  has IamIdentityCenterOptions => (is => 'ro', isa => 'Paws::OpenSearch::IamIdentityCenterOptions', traits => ['NameInRequest'], request_name => 'iamIdentityCenterOptions');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::GetApplicationResponse

=head1 ATTRIBUTES


=head2 AppConfigs => ArrayRef[L<Paws::OpenSearch::AppConfig>]

The configuration settings of the OpenSearch application.


=head2 Arn => Str




=head2 CreatedAt => Str

The timestamp when the OpenSearch application was created.


=head2 DataSources => ArrayRef[L<Paws::OpenSearch::DataSource>]

The data sources associated with the OpenSearch application.


=head2 Endpoint => Str

The endpoint URL of the OpenSearch application.


=head2 IamIdentityCenterOptions => L<Paws::OpenSearch::IamIdentityCenterOptions>

The IAM Identity Center settings configured for the OpenSearch
application.


=head2 Id => Str

The unique identifier of the OpenSearch application.


=head2 LastUpdatedAt => Str

The timestamp of the last update to the OpenSearch application.


=head2 Name => Str

The name of the OpenSearch application.


=head2 Status => Str

The current status of the OpenSearch application. Possible values:
C<CREATING>, C<UPDATING>, C<DELETING>, C<FAILED>, C<ACTIVE>, and
C<DELETED>.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"ACTIVE">, C<"FAILED">
=head2 _request_id => Str


=cut

