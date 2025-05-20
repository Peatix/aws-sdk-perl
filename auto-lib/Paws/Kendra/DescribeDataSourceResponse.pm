
package Paws::Kendra::DescribeDataSourceResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Kendra::DataSourceConfiguration');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CustomDocumentEnrichmentConfiguration => (is => 'ro', isa => 'Paws::Kendra::CustomDocumentEnrichmentConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::Kendra::DataSourceVpcConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeDataSourceResponse

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::Kendra::DataSourceConfiguration>

Configuration details for the data source connector. This shows how the
data source is configured. The configuration options for a data source
depend on the data source provider.


=head2 CreatedAt => Str

The Unix timestamp when the data source connector was created.


=head2 CustomDocumentEnrichmentConfiguration => L<Paws::Kendra::CustomDocumentEnrichmentConfiguration>

Configuration information for altering document metadata and content
during the document ingestion process when you describe a data source.

For more information on how to create, modify and delete document
metadata, or make other content alterations when you ingest documents
into Amazon Kendra, see Customizing document metadata during the
ingestion process
(https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html).


=head2 Description => Str

The description for the data source connector.


=head2 ErrorMessage => Str

When the C<Status> field value is C<FAILED>, the C<ErrorMessage> field
contains a description of the error that caused the data source to
fail.


=head2 Id => Str

The identifier of the data source connector.


=head2 IndexId => Str

The identifier of the index used with the data source connector.


=head2 LanguageCode => Str

The code for a language. This shows a supported language for all
documents in the data source. English is supported by default. For more
information on supported languages, including their codes, see Adding
documents in languages other than English
(https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).


=head2 Name => Str

The name for the data source connector.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role with permission to
access the data source and required resources.


=head2 Schedule => Str

The schedule for Amazon Kendra to update the index.


=head2 Status => Str

The current status of the data source connector. When the status is
C<ACTIVE> the data source is ready to use. When the status is
C<FAILED>, the C<ErrorMessage> field contains the reason that the data
source failed.

Valid values are: C<"CREATING">, C<"DELETING">, C<"FAILED">, C<"UPDATING">, C<"ACTIVE">
=head2 Type => Str

The type of the data source. For example, C<SHAREPOINT>.

Valid values are: C<"S3">, C<"SHAREPOINT">, C<"DATABASE">, C<"SALESFORCE">, C<"ONEDRIVE">, C<"SERVICENOW">, C<"CUSTOM">, C<"CONFLUENCE">, C<"GOOGLEDRIVE">, C<"WEBCRAWLER">, C<"WORKDOCS">, C<"FSX">, C<"SLACK">, C<"BOX">, C<"QUIP">, C<"JIRA">, C<"GITHUB">, C<"ALFRESCO">, C<"TEMPLATE">
=head2 UpdatedAt => Str

The Unix timestamp when the data source connector was last updated.


=head2 VpcConfiguration => L<Paws::Kendra::DataSourceVpcConfiguration>

Configuration information for an Amazon Virtual Private Cloud to
connect to your data source. For more information, see Configuring a
VPC
(https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html).


=head2 _request_id => Str


=cut

1;