
package Paws::OpenSearch::CreateApplicationResponse;
  use Moose;
  has AppConfigs => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::AppConfig]', traits => ['NameInRequest'], request_name => 'appConfigs');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DataSources => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DataSource]', traits => ['NameInRequest'], request_name => 'dataSources');
  has IamIdentityCenterOptions => (is => 'ro', isa => 'Paws::OpenSearch::IamIdentityCenterOptions', traits => ['NameInRequest'], request_name => 'iamIdentityCenterOptions');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::Tag]', traits => ['NameInRequest'], request_name => 'tagList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 AppConfigs => ArrayRef[L<Paws::OpenSearch::AppConfig>]

Configuration settings for the OpenSearch application, including
administrative options.


=head2 Arn => Str




=head2 CreatedAt => Str

The timestamp indicating when the OpenSearch application was created.


=head2 DataSources => ArrayRef[L<Paws::OpenSearch::DataSource>]

The data sources linked to the OpenSearch application.


=head2 IamIdentityCenterOptions => L<Paws::OpenSearch::IamIdentityCenterOptions>

The IAM Identity Center settings configured for the OpenSearch
application.


=head2 Id => Str

The unique identifier assigned to the OpenSearch application.


=head2 Name => Str

The name of the OpenSearch application.


=head2 TagList => ArrayRef[L<Paws::OpenSearch::Tag>]




=head2 _request_id => Str


=cut

