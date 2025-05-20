
package Paws::QBusiness::GetDataSourceResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId');
  has Configuration => (is => 'ro', isa => 'Paws::QBusiness::DataSourceConfiguration', traits => ['NameInRequest'], request_name => 'configuration');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DataSourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceArn');
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceId');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has DocumentEnrichmentConfiguration => (is => 'ro', isa => 'Paws::QBusiness::DocumentEnrichmentConfiguration', traits => ['NameInRequest'], request_name => 'documentEnrichmentConfiguration');
  has Error => (is => 'ro', isa => 'Paws::QBusiness::ErrorDetail', traits => ['NameInRequest'], request_name => 'error');
  has IndexId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexId');
  has MediaExtractionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::MediaExtractionConfiguration', traits => ['NameInRequest'], request_name => 'mediaExtractionConfiguration');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has SyncSchedule => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'syncSchedule');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::QBusiness::DataSourceVpcConfiguration', traits => ['NameInRequest'], request_name => 'vpcConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetDataSourceResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The identifier of the Amazon Q Business application.


=head2 Configuration => L<Paws::QBusiness::DataSourceConfiguration>

The details of how the data source connector is configured.


=head2 CreatedAt => Str

The Unix timestamp when the data source connector was created.


=head2 DataSourceArn => Str

The Amazon Resource Name (ARN) of the data source.


=head2 DataSourceId => Str

The identifier of the data source connector.


=head2 Description => Str

The description for the data source connector.


=head2 DisplayName => Str

The name for the data source connector.


=head2 DocumentEnrichmentConfiguration => L<Paws::QBusiness::DocumentEnrichmentConfiguration>




=head2 Error => L<Paws::QBusiness::ErrorDetail>

When the C<Status> field value is C<FAILED>, the C<ErrorMessage> field
contains a description of the error that caused the data source
connector to fail.


=head2 IndexId => Str

The identifier of the index linked to the data source connector.


=head2 MediaExtractionConfiguration => L<Paws::QBusiness::MediaExtractionConfiguration>

The configuration for extracting information from media in documents
for the data source.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role with permission to access
the data source and required resources.


=head2 Status => Str

The current status of the data source connector. When the C<Status>
field value is C<FAILED>, the C<ErrorMessage> field contains a
description of the error that caused the data source connector to fail.

Valid values are: C<"PENDING_CREATION">, C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"UPDATING">
=head2 SyncSchedule => Str

The schedule for Amazon Q Business to update the index.


=head2 Type => Str

The type of the data source connector. For example, C<S3>.


=head2 UpdatedAt => Str

The Unix timestamp when the data source connector was last updated.


=head2 VpcConfiguration => L<Paws::QBusiness::DataSourceVpcConfiguration>

Configuration information for an Amazon VPC (Virtual Private Cloud) to
connect to your data source.


=head2 _request_id => Str


=cut

