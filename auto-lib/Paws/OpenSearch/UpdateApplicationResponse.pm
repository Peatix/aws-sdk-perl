
package Paws::OpenSearch::UpdateApplicationResponse;
  use Moose;
  has AppConfigs => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::AppConfig]', traits => ['NameInRequest'], request_name => 'appConfigs');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DataSources => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DataSource]', traits => ['NameInRequest'], request_name => 'dataSources');
  has IamIdentityCenterOptions => (is => 'ro', isa => 'Paws::OpenSearch::IamIdentityCenterOptions', traits => ['NameInRequest'], request_name => 'iamIdentityCenterOptions');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpdateApplicationResponse

=head1 ATTRIBUTES


=head2 AppConfigs => ArrayRef[L<Paws::OpenSearch::AppConfig>]

The configuration settings for the updated OpenSearch application.


=head2 Arn => Str




=head2 CreatedAt => Str

The timestamp when the OpenSearch application was originally created.


=head2 DataSources => ArrayRef[L<Paws::OpenSearch::DataSource>]

The data sources associated with the updated OpenSearch application.


=head2 IamIdentityCenterOptions => L<Paws::OpenSearch::IamIdentityCenterOptions>

The IAM Identity Center configuration for the updated OpenSearch
application.


=head2 Id => Str

The unique identifier of the updated OpenSearch application.


=head2 LastUpdatedAt => Str

The timestamp when the OpenSearch application was last updated.


=head2 Name => Str

The name of the updated OpenSearch application.


=head2 _request_id => Str


=cut

