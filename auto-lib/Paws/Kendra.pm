package Paws::Kendra;
  use Moose;
  sub service { 'kendra' }
  sub signing_name { 'kendra' }
  sub version { '2019-02-03' }
  sub target_prefix { 'AWSKendraFrontendService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateEntitiesToExperience {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::AssociateEntitiesToExperience', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociatePersonasToEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::AssociatePersonasToEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::BatchDeleteDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteFeaturedResultsSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::BatchDeleteFeaturedResultsSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetDocumentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::BatchGetDocumentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::BatchPutDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ClearQuerySuggestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ClearQuerySuggestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccessControlConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateAccessControlConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExperience {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateExperience', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFaq {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateFaq', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFeaturedResultsSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateFeaturedResultsSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQuerySuggestionsBlockList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateQuerySuggestionsBlockList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateThesaurus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateThesaurus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessControlConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteAccessControlConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExperience {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteExperience', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFaq {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteFaq', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePrincipalMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeletePrincipalMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQuerySuggestionsBlockList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteQuerySuggestionsBlockList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteThesaurus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteThesaurus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccessControlConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeAccessControlConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExperience {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeExperience', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFaq {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeFaq', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFeaturedResultsSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeFeaturedResultsSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePrincipalMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribePrincipalMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQuerySuggestionsBlockList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeQuerySuggestionsBlockList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQuerySuggestionsConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeQuerySuggestionsConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeThesaurus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeThesaurus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateEntitiesFromExperience {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DisassociateEntitiesFromExperience', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociatePersonasFromEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DisassociatePersonasFromEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQuerySuggestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::GetQuerySuggestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::GetSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessControlConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListAccessControlConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListDataSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSourceSyncJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListDataSourceSyncJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntityPersonas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListEntityPersonas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExperienceEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListExperienceEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExperiences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListExperiences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFaqs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListFaqs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFeaturedResultsSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListFeaturedResultsSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupsOlderThanOrderingId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListGroupsOlderThanOrderingId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIndices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListIndices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQuerySuggestionsBlockLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListQuerySuggestionsBlockLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThesauri {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListThesauri', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPrincipalMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::PutPrincipalMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Query {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::Query', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Retrieve {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::Retrieve', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataSourceSyncJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::StartDataSourceSyncJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDataSourceSyncJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::StopDataSourceSyncJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::SubmitFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccessControlConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateAccessControlConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExperience {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateExperience', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFeaturedResultsSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateFeaturedResultsSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQuerySuggestionsBlockList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateQuerySuggestionsBlockList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQuerySuggestionsConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateQuerySuggestionsConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThesaurus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateThesaurus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateEntitiesToExperience AssociatePersonasToEntities BatchDeleteDocument BatchDeleteFeaturedResultsSet BatchGetDocumentStatus BatchPutDocument ClearQuerySuggestions CreateAccessControlConfiguration CreateDataSource CreateExperience CreateFaq CreateFeaturedResultsSet CreateIndex CreateQuerySuggestionsBlockList CreateThesaurus DeleteAccessControlConfiguration DeleteDataSource DeleteExperience DeleteFaq DeleteIndex DeletePrincipalMapping DeleteQuerySuggestionsBlockList DeleteThesaurus DescribeAccessControlConfiguration DescribeDataSource DescribeExperience DescribeFaq DescribeFeaturedResultsSet DescribeIndex DescribePrincipalMapping DescribeQuerySuggestionsBlockList DescribeQuerySuggestionsConfig DescribeThesaurus DisassociateEntitiesFromExperience DisassociatePersonasFromEntities GetQuerySuggestions GetSnapshots ListAccessControlConfigurations ListDataSources ListDataSourceSyncJobs ListEntityPersonas ListExperienceEntities ListExperiences ListFaqs ListFeaturedResultsSets ListGroupsOlderThanOrderingId ListIndices ListQuerySuggestionsBlockLists ListTagsForResource ListThesauri PutPrincipalMapping Query Retrieve StartDataSourceSyncJob StopDataSourceSyncJob SubmitFeedback TagResource UntagResource UpdateAccessControlConfiguration UpdateDataSource UpdateExperience UpdateFeaturedResultsSet UpdateIndex UpdateQuerySuggestionsBlockList UpdateQuerySuggestionsConfig UpdateThesaurus / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra - Perl Interface to AWS AWSKendraFrontendService

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Kendra');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Kendra is a service for indexing large document sets.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateEntitiesToExperience

=over

=item EntityList => ArrayRef[L<Paws::Kendra::EntityConfiguration>]

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::AssociateEntitiesToExperience>

Returns: a L<Paws::Kendra::AssociateEntitiesToExperienceResponse> instance

Grants users or groups in your IAM Identity Center identity source
access to your Amazon Kendra experience. You can create an Amazon
Kendra experience such as a search application. For more information on
creating a search application experience, see Building a search
experience with no code
(https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).


=head2 AssociatePersonasToEntities

=over

=item Id => Str

=item IndexId => Str

=item Personas => ArrayRef[L<Paws::Kendra::EntityPersonaConfiguration>]


=back

Each argument is described in detail in: L<Paws::Kendra::AssociatePersonasToEntities>

Returns: a L<Paws::Kendra::AssociatePersonasToEntitiesResponse> instance

Defines the specific permissions of users or groups in your IAM
Identity Center identity source with access to your Amazon Kendra
experience. You can create an Amazon Kendra experience such as a search
application. For more information on creating a search application
experience, see Building a search experience with no code
(https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).


=head2 BatchDeleteDocument

=over

=item DocumentIdList => ArrayRef[Str|Undef]

=item IndexId => Str

=item [DataSourceSyncJobMetricTarget => L<Paws::Kendra::DataSourceSyncJobMetricTarget>]


=back

Each argument is described in detail in: L<Paws::Kendra::BatchDeleteDocument>

Returns: a L<Paws::Kendra::BatchDeleteDocumentResponse> instance

Removes one or more documents from an index. The documents must have
been added with the C<BatchPutDocument> API.

The documents are deleted asynchronously. You can see the progress of
the deletion by using Amazon Web Services CloudWatch. Any error
messages related to the processing of the batch are sent to your Amazon
Web Services CloudWatch log. You can also use the
C<BatchGetDocumentStatus> API to monitor the progress of deleting your
documents.

Deleting documents from an index using C<BatchDeleteDocument> could
take up to an hour or more, depending on the number of documents you
want to delete.


=head2 BatchDeleteFeaturedResultsSet

=over

=item FeaturedResultsSetIds => ArrayRef[Str|Undef]

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::BatchDeleteFeaturedResultsSet>

Returns: a L<Paws::Kendra::BatchDeleteFeaturedResultsSetResponse> instance

Removes one or more sets of featured results. Features results are
placed above all other results for certain queries. If there's an exact
match of a query, then one or more specific documents are featured in
the search results.


=head2 BatchGetDocumentStatus

=over

=item DocumentInfoList => ArrayRef[L<Paws::Kendra::DocumentInfo>]

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::BatchGetDocumentStatus>

Returns: a L<Paws::Kendra::BatchGetDocumentStatusResponse> instance

Returns the indexing status for one or more documents submitted with
the BatchPutDocument
(https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html)
API.

When you use the C<BatchPutDocument> API, documents are indexed
asynchronously. You can use the C<BatchGetDocumentStatus> API to get
the current status of a list of documents so that you can determine if
they have been successfully indexed.

You can also use the C<BatchGetDocumentStatus> API to check the status
of the BatchDeleteDocument
(https://docs.aws.amazon.com/kendra/latest/dg/API_BatchDeleteDocument.html)
API. When a document is deleted from the index, Amazon Kendra returns
C<NOT_FOUND> as the status.


=head2 BatchPutDocument

=over

=item Documents => ArrayRef[L<Paws::Kendra::Document>]

=item IndexId => Str

=item [CustomDocumentEnrichmentConfiguration => L<Paws::Kendra::CustomDocumentEnrichmentConfiguration>]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::BatchPutDocument>

Returns: a L<Paws::Kendra::BatchPutDocumentResponse> instance

Adds one or more documents to an index.

The C<BatchPutDocument> API enables you to ingest inline documents or a
set of documents stored in an Amazon S3 bucket. Use this API to ingest
your text and unstructured text into an index, add custom attributes to
the documents, and to attach an access control list to the documents
added to the index.

The documents are indexed asynchronously. You can see the progress of
the batch using Amazon Web Services CloudWatch. Any error messages
related to processing the batch are sent to your Amazon Web Services
CloudWatch log. You can also use the C<BatchGetDocumentStatus> API to
monitor the progress of indexing your documents.

For an example of ingesting inline documents using Python and Java
SDKs, see Adding files directly to an index
(https://docs.aws.amazon.com/kendra/latest/dg/in-adding-binary-doc.html).


=head2 ClearQuerySuggestions

=over

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::ClearQuerySuggestions>

Returns: nothing

Clears existing query suggestions from an index.

This deletes existing suggestions only, not the queries in the query
log. After you clear suggestions, Amazon Kendra learns new suggestions
based on new queries added to the query log from the time you cleared
suggestions. If you do not see any new suggestions, then please allow
Amazon Kendra to collect enough queries to learn new suggestions.

C<ClearQuerySuggestions> is currently not supported in the Amazon Web
Services GovCloud (US-West) region.


=head2 CreateAccessControlConfiguration

=over

=item IndexId => Str

=item Name => Str

=item [AccessControlList => ArrayRef[L<Paws::Kendra::Principal>]]

=item [ClientToken => Str]

=item [Description => Str]

=item [HierarchicalAccessControlList => ArrayRef[L<Paws::Kendra::HierarchicalPrincipal>]]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateAccessControlConfiguration>

Returns: a L<Paws::Kendra::CreateAccessControlConfigurationResponse> instance

Creates an access configuration for your documents. This includes user
and group access information for your documents. This is useful for
user context filtering, where search results are filtered based on the
user or their group access to documents.

You can use this to re-configure your existing document level access
control without indexing all of your documents again. For example, your
index contains top-secret company documents that only certain employees
or users should access. One of these users leaves the company or
switches to a team that should be blocked from accessing top-secret
documents. The user still has access to top-secret documents because
the user had access when your documents were previously indexed. You
can create a specific access control configuration for the user with
deny access. You can later update the access control configuration to
allow access if the user returns to the company and re-joins the
'top-secret' team. You can re-configure access control for your
documents as circumstances change.

To apply your access control configuration to certain documents, you
call the BatchPutDocument
(https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html)
API with the C<AccessControlConfigurationId> included in the Document
(https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html)
object. If you use an S3 bucket as a data source, you update the
C<.metadata.json> with the C<AccessControlConfigurationId> and
synchronize your data source. Amazon Kendra currently only supports
access control configuration for S3 data sources and documents indexed
using the C<BatchPutDocument> API.

You can't configure access control using
C<CreateAccessControlConfiguration> for an Amazon Kendra Gen AI
Enterprise Edition index. Amazon Kendra will return a
C<ValidationException> error for a C<Gen_AI_ENTERPRISE_EDITION> index.


=head2 CreateDataSource

=over

=item IndexId => Str

=item Name => Str

=item Type => Str

=item [ClientToken => Str]

=item [Configuration => L<Paws::Kendra::DataSourceConfiguration>]

=item [CustomDocumentEnrichmentConfiguration => L<Paws::Kendra::CustomDocumentEnrichmentConfiguration>]

=item [Description => Str]

=item [LanguageCode => Str]

=item [RoleArn => Str]

=item [Schedule => Str]

=item [Tags => ArrayRef[L<Paws::Kendra::Tag>]]

=item [VpcConfiguration => L<Paws::Kendra::DataSourceVpcConfiguration>]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateDataSource>

Returns: a L<Paws::Kendra::CreateDataSourceResponse> instance

Creates a data source connector that you want to use with an Amazon
Kendra index.

You specify a name, data source connector type and description for your
data source. You also specify configuration information for the data
source connector.

C<CreateDataSource> is a synchronous operation. The operation returns
200 if the data source was successfully created. Otherwise, an
exception is raised.

For an example of creating an index and data source using the Python
SDK, see Getting started with Python SDK
(https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html). For an
example of creating an index and data source using the Java SDK, see
Getting started with Java SDK
(https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html).


=head2 CreateExperience

=over

=item IndexId => Str

=item Name => Str

=item [ClientToken => Str]

=item [Configuration => L<Paws::Kendra::ExperienceConfiguration>]

=item [Description => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateExperience>

Returns: a L<Paws::Kendra::CreateExperienceResponse> instance

Creates an Amazon Kendra experience such as a search application. For
more information on creating a search application experience, including
using the Python and Java SDKs, see Building a search experience with
no code
(https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).


=head2 CreateFaq

=over

=item IndexId => Str

=item Name => Str

=item RoleArn => Str

=item S3Path => L<Paws::Kendra::S3Path>

=item [ClientToken => Str]

=item [Description => Str]

=item [FileFormat => Str]

=item [LanguageCode => Str]

=item [Tags => ArrayRef[L<Paws::Kendra::Tag>]]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateFaq>

Returns: a L<Paws::Kendra::CreateFaqResponse> instance

Creates a set of frequently ask questions (FAQs) using a specified FAQ
file stored in an Amazon S3 bucket.

Adding FAQs to an index is an asynchronous operation.

For an example of adding an FAQ to an index using Python and Java SDKs,
see Using your FAQ file
(https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html#using-faq-file).


=head2 CreateFeaturedResultsSet

=over

=item FeaturedResultsSetName => Str

=item IndexId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [FeaturedDocuments => ArrayRef[L<Paws::Kendra::FeaturedDocument>]]

=item [QueryTexts => ArrayRef[Str|Undef]]

=item [Status => Str]

=item [Tags => ArrayRef[L<Paws::Kendra::Tag>]]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateFeaturedResultsSet>

Returns: a L<Paws::Kendra::CreateFeaturedResultsSetResponse> instance

Creates a set of featured results to display at the top of the search
results page. Featured results are placed above all other results for
certain queries. You map specific queries to specific documents for
featuring in the results. If a query contains an exact match, then one
or more specific documents are featured in the search results.

You can create up to 50 sets of featured results per index. You can
request to increase this limit by contacting Support
(http://aws.amazon.com/contact-us/).


=head2 CreateIndex

=over

=item Name => Str

=item RoleArn => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Edition => Str]

=item [ServerSideEncryptionConfiguration => L<Paws::Kendra::ServerSideEncryptionConfiguration>]

=item [Tags => ArrayRef[L<Paws::Kendra::Tag>]]

=item [UserContextPolicy => Str]

=item [UserGroupResolutionConfiguration => L<Paws::Kendra::UserGroupResolutionConfiguration>]

=item [UserTokenConfigurations => ArrayRef[L<Paws::Kendra::UserTokenConfiguration>]]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateIndex>

Returns: a L<Paws::Kendra::CreateIndexResponse> instance

Creates an Amazon Kendra index. Index creation is an asynchronous API.
To determine if index creation has completed, check the C<Status> field
returned from a call to C<DescribeIndex>. The C<Status> field is set to
C<ACTIVE> when the index is ready to use.

Once the index is active, you can index your documents using the
C<BatchPutDocument> API or using one of the supported data sources
(https://docs.aws.amazon.com/kendra/latest/dg/data-sources.html).

For an example of creating an index and data source using the Python
SDK, see Getting started with Python SDK
(https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html). For an
example of creating an index and data source using the Java SDK, see
Getting started with Java SDK
(https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html).


=head2 CreateQuerySuggestionsBlockList

=over

=item IndexId => Str

=item Name => Str

=item RoleArn => Str

=item SourceS3Path => L<Paws::Kendra::S3Path>

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::Kendra::Tag>]]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateQuerySuggestionsBlockList>

Returns: a L<Paws::Kendra::CreateQuerySuggestionsBlockListResponse> instance

Creates a block list to exlcude certain queries from suggestions.

Any query that contains words or phrases specified in the block list is
blocked or filtered out from being shown as a suggestion.

You need to provide the file location of your block list text file in
your S3 bucket. In your text file, enter each block word or phrase on a
separate line.

For information on the current quota limits for block lists, see Quotas
for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).

C<CreateQuerySuggestionsBlockList> is currently not supported in the
Amazon Web Services GovCloud (US-West) region.

For an example of creating a block list for query suggestions using the
Python SDK, see Query suggestions block list
(https://docs.aws.amazon.com/kendra/latest/dg/query-suggestions.html#query-suggestions-blocklist).


=head2 CreateThesaurus

=over

=item IndexId => Str

=item Name => Str

=item RoleArn => Str

=item SourceS3Path => L<Paws::Kendra::S3Path>

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::Kendra::Tag>]]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateThesaurus>

Returns: a L<Paws::Kendra::CreateThesaurusResponse> instance

Creates a thesaurus for an index. The thesaurus contains a list of
synonyms in Solr format.

For an example of adding a thesaurus file to an index, see Adding
custom synonyms to an index
(https://docs.aws.amazon.com/kendra/latest/dg/index-synonyms-adding-thesaurus-file.html).


=head2 DeleteAccessControlConfiguration

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteAccessControlConfiguration>

Returns: a L<Paws::Kendra::DeleteAccessControlConfigurationResponse> instance

Deletes an access control configuration that you created for your
documents in an index. This includes user and group access information
for your documents. This is useful for user context filtering, where
search results are filtered based on the user or their group access to
documents.


=head2 DeleteDataSource

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteDataSource>

Returns: nothing

Deletes an Amazon Kendra data source connector. An exception is not
thrown if the data source is already being deleted. While the data
source is being deleted, the C<Status> field returned by a call to the
C<DescribeDataSource> API is set to C<DELETING>. For more information,
see Deleting Data Sources
(https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html).

Deleting an entire data source or re-syncing your index after deleting
specific documents from a data source could take up to an hour or more,
depending on the number of documents you want to delete.


=head2 DeleteExperience

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteExperience>

Returns: a L<Paws::Kendra::DeleteExperienceResponse> instance

Deletes your Amazon Kendra experience such as a search application. For
more information on creating a search application experience, see
Building a search experience with no code
(https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).


=head2 DeleteFaq

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteFaq>

Returns: nothing

Removes a FAQ from an index.


=head2 DeleteIndex

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteIndex>

Returns: nothing

Deletes an Amazon Kendra index. An exception is not thrown if the index
is already being deleted. While the index is being deleted, the
C<Status> field returned by a call to the C<DescribeIndex> API is set
to C<DELETING>.


=head2 DeletePrincipalMapping

=over

=item GroupId => Str

=item IndexId => Str

=item [DataSourceId => Str]

=item [OrderingId => Int]


=back

Each argument is described in detail in: L<Paws::Kendra::DeletePrincipalMapping>

Returns: nothing

Deletes a group so that all users that belong to the group can no
longer access documents only available to that group.

For example, after deleting the group "Summer Interns", all interns who
belonged to that group no longer see intern-only documents in their
search results.

If you want to delete or replace users or sub groups of a group, you
need to use the C<PutPrincipalMapping> operation. For example, if a
user in the group "Engineering" leaves the engineering team and another
user takes their place, you provide an updated list of users or sub
groups that belong to the "Engineering" group when calling
C<PutPrincipalMapping>. You can update your internal list of users or
sub groups and input this list when calling C<PutPrincipalMapping>.

C<DeletePrincipalMapping> is currently not supported in the Amazon Web
Services GovCloud (US-West) region.


=head2 DeleteQuerySuggestionsBlockList

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteQuerySuggestionsBlockList>

Returns: nothing

Deletes a block list used for query suggestions for an index.

A deleted block list might not take effect right away. Amazon Kendra
needs to refresh the entire suggestions list to add back the queries
that were previously blocked.

C<DeleteQuerySuggestionsBlockList> is currently not supported in the
Amazon Web Services GovCloud (US-West) region.


=head2 DeleteThesaurus

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteThesaurus>

Returns: nothing

Deletes an Amazon Kendra thesaurus.


=head2 DescribeAccessControlConfiguration

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeAccessControlConfiguration>

Returns: a L<Paws::Kendra::DescribeAccessControlConfigurationResponse> instance

Gets information about an access control configuration that you created
for your documents in an index. This includes user and group access
information for your documents. This is useful for user context
filtering, where search results are filtered based on the user or their
group access to documents.


=head2 DescribeDataSource

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeDataSource>

Returns: a L<Paws::Kendra::DescribeDataSourceResponse> instance

Gets information about an Amazon Kendra data source connector.


=head2 DescribeExperience

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeExperience>

Returns: a L<Paws::Kendra::DescribeExperienceResponse> instance

Gets information about your Amazon Kendra experience such as a search
application. For more information on creating a search application
experience, see Building a search experience with no code
(https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).


=head2 DescribeFaq

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeFaq>

Returns: a L<Paws::Kendra::DescribeFaqResponse> instance

Gets information about a FAQ.


=head2 DescribeFeaturedResultsSet

=over

=item FeaturedResultsSetId => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeFeaturedResultsSet>

Returns: a L<Paws::Kendra::DescribeFeaturedResultsSetResponse> instance

Gets information about a set of featured results. Features results are
placed above all other results for certain queries. If there's an exact
match of a query, then one or more specific documents are featured in
the search results.


=head2 DescribeIndex

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeIndex>

Returns: a L<Paws::Kendra::DescribeIndexResponse> instance

Gets information about an Amazon Kendra index.


=head2 DescribePrincipalMapping

=over

=item GroupId => Str

=item IndexId => Str

=item [DataSourceId => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::DescribePrincipalMapping>

Returns: a L<Paws::Kendra::DescribePrincipalMappingResponse> instance

Describes the processing of C<PUT> and C<DELETE> actions for mapping
users to their groups. This includes information on the status of
actions currently processing or yet to be processed, when actions were
last updated, when actions were received by Amazon Kendra, the latest
action that should process and apply after other actions, and useful
error messages if an action could not be processed.

C<DescribePrincipalMapping> is currently not supported in the Amazon
Web Services GovCloud (US-West) region.


=head2 DescribeQuerySuggestionsBlockList

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeQuerySuggestionsBlockList>

Returns: a L<Paws::Kendra::DescribeQuerySuggestionsBlockListResponse> instance

Gets information about a block list used for query suggestions for an
index.

This is used to check the current settings that are applied to a block
list.

C<DescribeQuerySuggestionsBlockList> is currently not supported in the
Amazon Web Services GovCloud (US-West) region.


=head2 DescribeQuerySuggestionsConfig

=over

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeQuerySuggestionsConfig>

Returns: a L<Paws::Kendra::DescribeQuerySuggestionsConfigResponse> instance

Gets information on the settings of query suggestions for an index.

This is used to check the current settings applied to query
suggestions.

C<DescribeQuerySuggestionsConfig> is currently not supported in the
Amazon Web Services GovCloud (US-West) region.


=head2 DescribeThesaurus

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeThesaurus>

Returns: a L<Paws::Kendra::DescribeThesaurusResponse> instance

Gets information about an Amazon Kendra thesaurus.


=head2 DisassociateEntitiesFromExperience

=over

=item EntityList => ArrayRef[L<Paws::Kendra::EntityConfiguration>]

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DisassociateEntitiesFromExperience>

Returns: a L<Paws::Kendra::DisassociateEntitiesFromExperienceResponse> instance

Prevents users or groups in your IAM Identity Center identity source
from accessing your Amazon Kendra experience. You can create an Amazon
Kendra experience such as a search application. For more information on
creating a search application experience, see Building a search
experience with no code
(https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).


=head2 DisassociatePersonasFromEntities

=over

=item EntityIds => ArrayRef[Str|Undef]

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DisassociatePersonasFromEntities>

Returns: a L<Paws::Kendra::DisassociatePersonasFromEntitiesResponse> instance

Removes the specific permissions of users or groups in your IAM
Identity Center identity source with access to your Amazon Kendra
experience. You can create an Amazon Kendra experience such as a search
application. For more information on creating a search application
experience, see Building a search experience with no code
(https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).


=head2 GetQuerySuggestions

=over

=item IndexId => Str

=item QueryText => Str

=item [AttributeSuggestionsConfig => L<Paws::Kendra::AttributeSuggestionsGetConfig>]

=item [MaxSuggestionsCount => Int]

=item [SuggestionTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Kendra::GetQuerySuggestions>

Returns: a L<Paws::Kendra::GetQuerySuggestionsResponse> instance

Fetches the queries that are suggested to your users.

C<GetQuerySuggestions> is currently not supported in the Amazon Web
Services GovCloud (US-West) region.


=head2 GetSnapshots

=over

=item IndexId => Str

=item Interval => Str

=item MetricType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::GetSnapshots>

Returns: a L<Paws::Kendra::GetSnapshotsResponse> instance

Retrieves search metrics data. The data provides a snapshot of how your
users interact with your search application and how effective the
application is.


=head2 ListAccessControlConfigurations

=over

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListAccessControlConfigurations>

Returns: a L<Paws::Kendra::ListAccessControlConfigurationsResponse> instance

Lists one or more access control configurations for an index. This
includes user and group access information for your documents. This is
useful for user context filtering, where search results are filtered
based on the user or their group access to documents.


=head2 ListDataSources

=over

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListDataSources>

Returns: a L<Paws::Kendra::ListDataSourcesResponse> instance

Lists the data source connectors that you have created.


=head2 ListDataSourceSyncJobs

=over

=item Id => Str

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTimeFilter => L<Paws::Kendra::TimeRange>]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListDataSourceSyncJobs>

Returns: a L<Paws::Kendra::ListDataSourceSyncJobsResponse> instance

Gets statistics about synchronizing a data source connector.


=head2 ListEntityPersonas

=over

=item Id => Str

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListEntityPersonas>

Returns: a L<Paws::Kendra::ListEntityPersonasResponse> instance

Lists specific permissions of users and groups with access to your
Amazon Kendra experience.


=head2 ListExperienceEntities

=over

=item Id => Str

=item IndexId => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListExperienceEntities>

Returns: a L<Paws::Kendra::ListExperienceEntitiesResponse> instance

Lists users or groups in your IAM Identity Center identity source that
are granted access to your Amazon Kendra experience. You can create an
Amazon Kendra experience such as a search application. For more
information on creating a search application experience, see Building a
search experience with no code
(https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).


=head2 ListExperiences

=over

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListExperiences>

Returns: a L<Paws::Kendra::ListExperiencesResponse> instance

Lists one or more Amazon Kendra experiences. You can create an Amazon
Kendra experience such as a search application. For more information on
creating a search application experience, see Building a search
experience with no code
(https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).


=head2 ListFaqs

=over

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListFaqs>

Returns: a L<Paws::Kendra::ListFaqsResponse> instance

Gets a list of FAQs associated with an index.


=head2 ListFeaturedResultsSets

=over

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListFeaturedResultsSets>

Returns: a L<Paws::Kendra::ListFeaturedResultsSetsResponse> instance

Lists all your sets of featured results for a given index. Features
results are placed above all other results for certain queries. If
there's an exact match of a query, then one or more specific documents
are featured in the search results.


=head2 ListGroupsOlderThanOrderingId

=over

=item IndexId => Str

=item OrderingId => Int

=item [DataSourceId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListGroupsOlderThanOrderingId>

Returns: a L<Paws::Kendra::ListGroupsOlderThanOrderingIdResponse> instance

Provides a list of groups that are mapped to users before a given
ordering or timestamp identifier.

C<ListGroupsOlderThanOrderingId> is currently not supported in the
Amazon Web Services GovCloud (US-West) region.


=head2 ListIndices

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListIndices>

Returns: a L<Paws::Kendra::ListIndicesResponse> instance

Lists the Amazon Kendra indexes that you created.


=head2 ListQuerySuggestionsBlockLists

=over

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListQuerySuggestionsBlockLists>

Returns: a L<Paws::Kendra::ListQuerySuggestionsBlockListsResponse> instance

Lists the block lists used for query suggestions for an index.

For information on the current quota limits for block lists, see Quotas
for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).

C<ListQuerySuggestionsBlockLists> is currently not supported in the
Amazon Web Services GovCloud (US-West) region.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Kendra::ListTagsForResource>

Returns: a L<Paws::Kendra::ListTagsForResourceResponse> instance

Gets a list of tags associated with a resource. Indexes, FAQs, data
sources, and other resources can have tags associated with them.


=head2 ListThesauri

=over

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListThesauri>

Returns: a L<Paws::Kendra::ListThesauriResponse> instance

Lists the thesauri for an index.


=head2 PutPrincipalMapping

=over

=item GroupId => Str

=item GroupMembers => L<Paws::Kendra::GroupMembers>

=item IndexId => Str

=item [DataSourceId => Str]

=item [OrderingId => Int]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::PutPrincipalMapping>

Returns: nothing

Maps users to their groups so that you only need to provide the user ID
when you issue the query.

You can also map sub groups to groups. For example, the group "Company
Intellectual Property Teams" includes sub groups "Research" and
"Engineering". These sub groups include their own list of users or
people who work in these teams. Only users who work in research and
engineering, and therefore belong in the intellectual property group,
can see top-secret company documents in their search results.

This is useful for user context filtering, where search results are
filtered based on the user or their group access to documents. For more
information, see Filtering on user context
(https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html).

If more than five C<PUT> actions for a group are currently processing,
a validation exception is thrown.


=head2 Query

=over

=item IndexId => Str

=item [AttributeFilter => L<Paws::Kendra::AttributeFilter>]

=item [CollapseConfiguration => L<Paws::Kendra::CollapseConfiguration>]

=item [DocumentRelevanceOverrideConfigurations => ArrayRef[L<Paws::Kendra::DocumentRelevanceConfiguration>]]

=item [Facets => ArrayRef[L<Paws::Kendra::Facet>]]

=item [PageNumber => Int]

=item [PageSize => Int]

=item [QueryResultTypeFilter => Str]

=item [QueryText => Str]

=item [RequestedDocumentAttributes => ArrayRef[Str|Undef]]

=item [SortingConfiguration => L<Paws::Kendra::SortingConfiguration>]

=item [SortingConfigurations => ArrayRef[L<Paws::Kendra::SortingConfiguration>]]

=item [SpellCorrectionConfiguration => L<Paws::Kendra::SpellCorrectionConfiguration>]

=item [UserContext => L<Paws::Kendra::UserContext>]

=item [VisitorId => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::Query>

Returns: a L<Paws::Kendra::QueryResult> instance

Searches an index given an input query.

If you are working with large language models (LLMs) or implementing
retrieval augmented generation (RAG) systems, you can use Amazon
Kendra's Retrieve
(https://docs.aws.amazon.com/kendra/latest/APIReference/API_Retrieve.html)
API, which can return longer semantically relevant passages. We
recommend using the C<Retrieve> API instead of filing a service limit
increase to increase the C<Query> API document excerpt length.

You can configure boosting or relevance tuning at the query level to
override boosting at the index level, filter based on document
fields/attributes and faceted search, and filter based on the user or
their group access to documents. You can also include certain fields in
the response that might provide useful additional information.

A query response contains three types of results.

=over

=item *

Relevant suggested answers. The answers can be either a text excerpt or
table excerpt. The answer can be highlighted in the excerpt.

=item *

Matching FAQs or questions-answer from your FAQ file.

=item *

Relevant documents. This result type includes an excerpt of the
document with the document title. The searched terms can be highlighted
in the excerpt.

=back

You can specify that the query return only one type of result using the
C<QueryResultTypeFilter> parameter. Each query returns the 100 most
relevant results. If you filter result type to only question-answers, a
maximum of four results are returned. If you filter result type to only
answers, a maximum of three results are returned.

If you're using an Amazon Kendra Gen AI Enterprise Edition index, you
can only use C<ATTRIBUTE_FILTER> to filter search results by user
context. If you're using an Amazon Kendra Gen AI Enterprise Edition
index and you try to use C<USER_TOKEN> to configure user context
policy, Amazon Kendra returns a C<ValidationException> error.


=head2 Retrieve

=over

=item IndexId => Str

=item QueryText => Str

=item [AttributeFilter => L<Paws::Kendra::AttributeFilter>]

=item [DocumentRelevanceOverrideConfigurations => ArrayRef[L<Paws::Kendra::DocumentRelevanceConfiguration>]]

=item [PageNumber => Int]

=item [PageSize => Int]

=item [RequestedDocumentAttributes => ArrayRef[Str|Undef]]

=item [UserContext => L<Paws::Kendra::UserContext>]


=back

Each argument is described in detail in: L<Paws::Kendra::Retrieve>

Returns: a L<Paws::Kendra::RetrieveResult> instance

Retrieves relevant passages or text excerpts given an input query.

This API is similar to the Query
(https://docs.aws.amazon.com/kendra/latest/APIReference/API_Query.html)
API. However, by default, the C<Query> API only returns excerpt
passages of up to 100 token words. With the C<Retrieve> API, you can
retrieve longer passages of up to 200 token words and up to 100
semantically relevant passages. This doesn't include question-answer or
FAQ type responses from your index. The passages are text excerpts that
can be semantically extracted from multiple documents and multiple
parts of the same document. If in extreme cases your documents produce
zero passages using the C<Retrieve> API, you can alternatively use the
C<Query> API and its types of responses.

You can also do the following:

=over

=item *

Override boosting at the index level

=item *

Filter based on document fields or attributes

=item *

Filter based on the user or their group access to documents

=item *

View the confidence score bucket for a retrieved passage result. The
confidence bucket provides a relative ranking that indicates how
confident Amazon Kendra is that the response is relevant to the query.

Confidence score buckets are currently available only for English.

=back

You can also include certain fields in the response that might provide
useful additional information.

The C<Retrieve> API shares the number of query capacity units
(https://docs.aws.amazon.com/kendra/latest/APIReference/API_CapacityUnitsConfiguration.html)
that you set for your index. For more information on what's included in
a single capacity unit and the default base capacity for an index, see
Adjusting capacity
(https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html).

If you're using an Amazon Kendra Gen AI Enterprise Edition index, you
can only use C<ATTRIBUTE_FILTER> to filter search results by user
context. If you're using an Amazon Kendra Gen AI Enterprise Edition
index and you try to use C<USER_TOKEN> to configure user context
policy, Amazon Kendra returns a C<ValidationException> error.


=head2 StartDataSourceSyncJob

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::StartDataSourceSyncJob>

Returns: a L<Paws::Kendra::StartDataSourceSyncJobResponse> instance

Starts a synchronization job for a data source connector. If a
synchronization job is already in progress, Amazon Kendra returns a
C<ResourceInUseException> exception.

Re-syncing your data source with your index after modifying, adding, or
deleting documents from your data source respository could take up to
an hour or more, depending on the number of documents to sync.


=head2 StopDataSourceSyncJob

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::StopDataSourceSyncJob>

Returns: nothing

Stops a synchronization job that is currently running. You can't stop a
scheduled synchronization job.


=head2 SubmitFeedback

=over

=item IndexId => Str

=item QueryId => Str

=item [ClickFeedbackItems => ArrayRef[L<Paws::Kendra::ClickFeedback>]]

=item [RelevanceFeedbackItems => ArrayRef[L<Paws::Kendra::RelevanceFeedback>]]


=back

Each argument is described in detail in: L<Paws::Kendra::SubmitFeedback>

Returns: nothing

Enables you to provide feedback to Amazon Kendra to improve the
performance of your index.

C<SubmitFeedback> is currently not supported in the Amazon Web Services
GovCloud (US-West) region.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::Kendra::Tag>]


=back

Each argument is described in detail in: L<Paws::Kendra::TagResource>

Returns: a L<Paws::Kendra::TagResourceResponse> instance

Adds the specified tag to the specified index, FAQ, data source, or
other resource. If the tag already exists, the existing value is
replaced with the new value.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Kendra::UntagResource>

Returns: a L<Paws::Kendra::UntagResourceResponse> instance

Removes a tag from an index, FAQ, data source, or other resource.


=head2 UpdateAccessControlConfiguration

=over

=item Id => Str

=item IndexId => Str

=item [AccessControlList => ArrayRef[L<Paws::Kendra::Principal>]]

=item [Description => Str]

=item [HierarchicalAccessControlList => ArrayRef[L<Paws::Kendra::HierarchicalPrincipal>]]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateAccessControlConfiguration>

Returns: a L<Paws::Kendra::UpdateAccessControlConfigurationResponse> instance

Updates an access control configuration for your documents in an index.
This includes user and group access information for your documents.
This is useful for user context filtering, where search results are
filtered based on the user or their group access to documents.

You can update an access control configuration you created without
indexing all of your documents again. For example, your index contains
top-secret company documents that only certain employees or users
should access. You created an 'allow' access control configuration for
one user who recently joined the 'top-secret' team, switching from a
team with 'deny' access to top-secret documents. However, the user
suddenly returns to their previous team and should no longer have
access to top secret documents. You can update the access control
configuration to re-configure access control for your documents as
circumstances change.

You call the BatchPutDocument
(https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html)
API to apply the updated access control configuration, with the
C<AccessControlConfigurationId> included in the Document
(https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html)
object. If you use an S3 bucket as a data source, you synchronize your
data source to apply the C<AccessControlConfigurationId> in the
C<.metadata.json> file. Amazon Kendra currently only supports access
control configuration for S3 data sources and documents indexed using
the C<BatchPutDocument> API.

You can't configure access control using
C<CreateAccessControlConfiguration> for an Amazon Kendra Gen AI
Enterprise Edition index. Amazon Kendra will return a
C<ValidationException> error for a C<Gen_AI_ENTERPRISE_EDITION> index.


=head2 UpdateDataSource

=over

=item Id => Str

=item IndexId => Str

=item [Configuration => L<Paws::Kendra::DataSourceConfiguration>]

=item [CustomDocumentEnrichmentConfiguration => L<Paws::Kendra::CustomDocumentEnrichmentConfiguration>]

=item [Description => Str]

=item [LanguageCode => Str]

=item [Name => Str]

=item [RoleArn => Str]

=item [Schedule => Str]

=item [VpcConfiguration => L<Paws::Kendra::DataSourceVpcConfiguration>]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateDataSource>

Returns: nothing

Updates an Amazon Kendra data source connector.


=head2 UpdateExperience

=over

=item Id => Str

=item IndexId => Str

=item [Configuration => L<Paws::Kendra::ExperienceConfiguration>]

=item [Description => Str]

=item [Name => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateExperience>

Returns: nothing

Updates your Amazon Kendra experience such as a search application. For
more information on creating a search application experience, see
Building a search experience with no code
(https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).


=head2 UpdateFeaturedResultsSet

=over

=item FeaturedResultsSetId => Str

=item IndexId => Str

=item [Description => Str]

=item [FeaturedDocuments => ArrayRef[L<Paws::Kendra::FeaturedDocument>]]

=item [FeaturedResultsSetName => Str]

=item [QueryTexts => ArrayRef[Str|Undef]]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateFeaturedResultsSet>

Returns: a L<Paws::Kendra::UpdateFeaturedResultsSetResponse> instance

Updates a set of featured results. Features results are placed above
all other results for certain queries. You map specific queries to
specific documents for featuring in the results. If a query contains an
exact match of a query, then one or more specific documents are
featured in the search results.


=head2 UpdateIndex

=over

=item Id => Str

=item [CapacityUnits => L<Paws::Kendra::CapacityUnitsConfiguration>]

=item [Description => Str]

=item [DocumentMetadataConfigurationUpdates => ArrayRef[L<Paws::Kendra::DocumentMetadataConfiguration>]]

=item [Name => Str]

=item [RoleArn => Str]

=item [UserContextPolicy => Str]

=item [UserGroupResolutionConfiguration => L<Paws::Kendra::UserGroupResolutionConfiguration>]

=item [UserTokenConfigurations => ArrayRef[L<Paws::Kendra::UserTokenConfiguration>]]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateIndex>

Returns: nothing

Updates an Amazon Kendra index.


=head2 UpdateQuerySuggestionsBlockList

=over

=item Id => Str

=item IndexId => Str

=item [Description => Str]

=item [Name => Str]

=item [RoleArn => Str]

=item [SourceS3Path => L<Paws::Kendra::S3Path>]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateQuerySuggestionsBlockList>

Returns: nothing

Updates a block list used for query suggestions for an index.

Updates to a block list might not take effect right away. Amazon Kendra
needs to refresh the entire suggestions list to apply any updates to
the block list. Other changes not related to the block list apply
immediately.

If a block list is updating, then you need to wait for the first update
to finish before submitting another update.

Amazon Kendra supports partial updates, so you only need to provide the
fields you want to update.

C<UpdateQuerySuggestionsBlockList> is currently not supported in the
Amazon Web Services GovCloud (US-West) region.


=head2 UpdateQuerySuggestionsConfig

=over

=item IndexId => Str

=item [AttributeSuggestionsConfig => L<Paws::Kendra::AttributeSuggestionsUpdateConfig>]

=item [IncludeQueriesWithoutUserInformation => Bool]

=item [MinimumNumberOfQueryingUsers => Int]

=item [MinimumQueryCount => Int]

=item [Mode => Str]

=item [QueryLogLookBackWindowInDays => Int]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateQuerySuggestionsConfig>

Returns: nothing

Updates the settings of query suggestions for an index.

Amazon Kendra supports partial updates, so you only need to provide the
fields you want to update.

If an update is currently processing, you need to wait for the update
to finish before making another update.

Updates to query suggestions settings might not take effect right away.
The time for your updated settings to take effect depends on the
updates made and the number of search queries in your index.

You can still enable/disable query suggestions at any time.

C<UpdateQuerySuggestionsConfig> is currently not supported in the
Amazon Web Services GovCloud (US-West) region.


=head2 UpdateThesaurus

=over

=item Id => Str

=item IndexId => Str

=item [Description => Str]

=item [Name => Str]

=item [RoleArn => Str]

=item [SourceS3Path => L<Paws::Kendra::S3Path>]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateThesaurus>

Returns: nothing

Updates a thesaurus for an index.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

