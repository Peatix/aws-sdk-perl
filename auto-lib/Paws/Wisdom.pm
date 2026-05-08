package Paws::Wisdom;
  use Moose;
  sub service { 'wisdom' }
  sub signing_name { 'wisdom' }
  sub version { '2020-10-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateAssistant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::CreateAssistant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssistantAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::CreateAssistantAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::CreateContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::CreateKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQuickResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::CreateQuickResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::CreateSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssistant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::DeleteAssistant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssistantAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::DeleteAssistantAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::DeleteContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::DeleteImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::DeleteKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQuickResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::DeleteQuickResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssistant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::GetAssistant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssistantAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::GetAssistantAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::GetContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContentSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::GetContentSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::GetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKnowledgeBase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::GetKnowledgeBase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQuickResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::GetQuickResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::GetRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::GetSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssistantAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::ListAssistantAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssistants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::ListAssistants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::ListContents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::ListImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKnowledgeBases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::ListKnowledgeBases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQuickResponses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::ListQuickResponses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub NotifyRecommendationsReceived {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::NotifyRecommendationsReceived', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub QueryAssistant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::QueryAssistant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveKnowledgeBaseTemplateUri {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::RemoveKnowledgeBaseTemplateUri', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::SearchContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchQuickResponses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::SearchQuickResponses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::SearchSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartContentUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::StartContentUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::StartImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::UpdateContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKnowledgeBaseTemplateUri {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::UpdateKnowledgeBaseTemplateUri', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQuickResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Wisdom::UpdateQuickResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAssistantAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssistantAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssistantAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->assistantAssociationSummaries }, @{ $next_result->assistantAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assistantAssociationSummaries') foreach (@{ $result->assistantAssociationSummaries });
        $result = $self->ListAssistantAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assistantAssociationSummaries') foreach (@{ $result->assistantAssociationSummaries });
    }

    return undef
  }
  sub ListAllAssistants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssistants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAssistants(@_, nextToken => $next_result->nextToken);
        push @{ $result->assistantSummaries }, @{ $next_result->assistantSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'assistantSummaries') foreach (@{ $result->assistantSummaries });
        $result = $self->ListAssistants(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'assistantSummaries') foreach (@{ $result->assistantSummaries });
    }

    return undef
  }
  sub ListAllContents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListContents(@_, nextToken => $next_result->nextToken);
        push @{ $result->contentSummaries }, @{ $next_result->contentSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'contentSummaries') foreach (@{ $result->contentSummaries });
        $result = $self->ListContents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'contentSummaries') foreach (@{ $result->contentSummaries });
    }

    return undef
  }
  sub ListAllImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListImportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->importJobSummaries }, @{ $next_result->importJobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'importJobSummaries') foreach (@{ $result->importJobSummaries });
        $result = $self->ListImportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'importJobSummaries') foreach (@{ $result->importJobSummaries });
    }

    return undef
  }
  sub ListAllKnowledgeBases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKnowledgeBases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListKnowledgeBases(@_, nextToken => $next_result->nextToken);
        push @{ $result->knowledgeBaseSummaries }, @{ $next_result->knowledgeBaseSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'knowledgeBaseSummaries') foreach (@{ $result->knowledgeBaseSummaries });
        $result = $self->ListKnowledgeBases(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'knowledgeBaseSummaries') foreach (@{ $result->knowledgeBaseSummaries });
    }

    return undef
  }
  sub ListAllQuickResponses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQuickResponses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListQuickResponses(@_, nextToken => $next_result->nextToken);
        push @{ $result->quickResponseSummaries }, @{ $next_result->quickResponseSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'quickResponseSummaries') foreach (@{ $result->quickResponseSummaries });
        $result = $self->ListQuickResponses(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'quickResponseSummaries') foreach (@{ $result->quickResponseSummaries });
    }

    return undef
  }
  sub QueryAllAssistant {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->QueryAssistant(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->QueryAssistant(@_, nextToken => $next_result->nextToken);
        push @{ $result->results }, @{ $next_result->results };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'results') foreach (@{ $result->results });
        $result = $self->QueryAssistant(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'results') foreach (@{ $result->results });
    }

    return undef
  }
  sub SearchAllContent {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchContent(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchContent(@_, nextToken => $next_result->nextToken);
        push @{ $result->contentSummaries }, @{ $next_result->contentSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'contentSummaries') foreach (@{ $result->contentSummaries });
        $result = $self->SearchContent(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'contentSummaries') foreach (@{ $result->contentSummaries });
    }

    return undef
  }
  sub SearchAllQuickResponses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchQuickResponses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchQuickResponses(@_, nextToken => $next_result->nextToken);
        push @{ $result->results }, @{ $next_result->results };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'results') foreach (@{ $result->results });
        $result = $self->SearchQuickResponses(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'results') foreach (@{ $result->results });
    }

    return undef
  }
  sub SearchAllSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchSessions(@_, nextToken => $next_result->nextToken);
        push @{ $result->sessionSummaries }, @{ $next_result->sessionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sessionSummaries') foreach (@{ $result->sessionSummaries });
        $result = $self->SearchSessions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sessionSummaries') foreach (@{ $result->sessionSummaries });
    }

    return undef
  }


  sub operations { qw/CreateAssistant CreateAssistantAssociation CreateContent CreateKnowledgeBase CreateQuickResponse CreateSession DeleteAssistant DeleteAssistantAssociation DeleteContent DeleteImportJob DeleteKnowledgeBase DeleteQuickResponse GetAssistant GetAssistantAssociation GetContent GetContentSummary GetImportJob GetKnowledgeBase GetQuickResponse GetRecommendations GetSession ListAssistantAssociations ListAssistants ListContents ListImportJobs ListKnowledgeBases ListQuickResponses ListTagsForResource NotifyRecommendationsReceived QueryAssistant RemoveKnowledgeBaseTemplateUri SearchContent SearchQuickResponses SearchSessions StartContentUpload StartImportJob TagResource UntagResource UpdateContent UpdateKnowledgeBaseTemplateUri UpdateQuickResponse / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom - Perl Interface to AWS Amazon Connect Wisdom Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Wisdom');
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

Amazon Connect Wisdom delivers agents the information they need to
solve customer issues as they're actively speaking with customers.
Agents can search across connected repositories from within their agent
desktop to find answers quickly. Use Amazon Connect Wisdom to create an
assistant and a knowledge base, for example, or manage content by
uploading custom files.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom-2020-10-19>


=head1 METHODS

=head2 CreateAssistant

=over

=item Name => Str

=item Type => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [ServerSideEncryptionConfiguration => L<Paws::Wisdom::ServerSideEncryptionConfiguration>]

=item [Tags => L<Paws::Wisdom::Tags>]


=back

Each argument is described in detail in: L<Paws::Wisdom::CreateAssistant>

Returns: a L<Paws::Wisdom::CreateAssistantResponse> instance

Creates an Amazon Connect Wisdom assistant.


=head2 CreateAssistantAssociation

=over

=item AssistantId => Str

=item Association => L<Paws::Wisdom::AssistantAssociationInputData>

=item AssociationType => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::Wisdom::Tags>]


=back

Each argument is described in detail in: L<Paws::Wisdom::CreateAssistantAssociation>

Returns: a L<Paws::Wisdom::CreateAssistantAssociationResponse> instance

Creates an association between an Amazon Connect Wisdom assistant and
another resource. Currently, the only supported association is with a
knowledge base. An assistant can have only a single association.


=head2 CreateContent

=over

=item KnowledgeBaseId => Str

=item Name => Str

=item UploadId => Str

=item [ClientToken => Str]

=item [Metadata => L<Paws::Wisdom::ContentMetadata>]

=item [OverrideLinkOutUri => Str]

=item [Tags => L<Paws::Wisdom::Tags>]

=item [Title => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::CreateContent>

Returns: a L<Paws::Wisdom::CreateContentResponse> instance

Creates Wisdom content. Before to calling this API, use
StartContentUpload
(https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html)
to upload an asset.


=head2 CreateKnowledgeBase

=over

=item KnowledgeBaseType => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [RenderingConfiguration => L<Paws::Wisdom::RenderingConfiguration>]

=item [ServerSideEncryptionConfiguration => L<Paws::Wisdom::ServerSideEncryptionConfiguration>]

=item [SourceConfiguration => L<Paws::Wisdom::SourceConfiguration>]

=item [Tags => L<Paws::Wisdom::Tags>]


=back

Each argument is described in detail in: L<Paws::Wisdom::CreateKnowledgeBase>

Returns: a L<Paws::Wisdom::CreateKnowledgeBaseResponse> instance

Creates a knowledge base.

When using this API, you cannot reuse Amazon AppIntegrations
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
DataIntegrations with external knowledge bases such as Salesforce and
ServiceNow. If you do, you'll get an C<InvalidRequestException> error.

For example, you're programmatically managing your external knowledge
base, and you want to add or remove one of the fields that is being
ingested from Salesforce. Do the following:

=over

=item 1.

Call DeleteKnowledgeBase
(https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html).

=item 2.

Call DeleteDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html).

=item 3.

Call CreateDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
to recreate the DataIntegration or a create different one.

=item 4.

Call CreateKnowledgeBase.

=back



=head2 CreateQuickResponse

=over

=item Content => L<Paws::Wisdom::QuickResponseDataProvider>

=item KnowledgeBaseId => Str

=item Name => Str

=item [Channels => ArrayRef[Str|Undef]]

=item [ClientToken => Str]

=item [ContentType => Str]

=item [Description => Str]

=item [GroupingConfiguration => L<Paws::Wisdom::GroupingConfiguration>]

=item [IsActive => Bool]

=item [Language => Str]

=item [ShortcutKey => Str]

=item [Tags => L<Paws::Wisdom::Tags>]


=back

Each argument is described in detail in: L<Paws::Wisdom::CreateQuickResponse>

Returns: a L<Paws::Wisdom::CreateQuickResponseResponse> instance

Creates a Wisdom quick response.


=head2 CreateSession

=over

=item AssistantId => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::Wisdom::Tags>]


=back

Each argument is described in detail in: L<Paws::Wisdom::CreateSession>

Returns: a L<Paws::Wisdom::CreateSessionResponse> instance

Creates a session. A session is a contextual container used for
generating recommendations. Amazon Connect creates a new Wisdom session
for each contact on which Wisdom is enabled.


=head2 DeleteAssistant

=over

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::DeleteAssistant>

Returns: a L<Paws::Wisdom::DeleteAssistantResponse> instance

Deletes an assistant.


=head2 DeleteAssistantAssociation

=over

=item AssistantAssociationId => Str

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::DeleteAssistantAssociation>

Returns: a L<Paws::Wisdom::DeleteAssistantAssociationResponse> instance

Deletes an assistant association.


=head2 DeleteContent

=over

=item ContentId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::DeleteContent>

Returns: a L<Paws::Wisdom::DeleteContentResponse> instance

Deletes the content.


=head2 DeleteImportJob

=over

=item ImportJobId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::DeleteImportJob>

Returns: a L<Paws::Wisdom::DeleteImportJobResponse> instance

Deletes the quick response import job.


=head2 DeleteKnowledgeBase

=over

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::DeleteKnowledgeBase>

Returns: a L<Paws::Wisdom::DeleteKnowledgeBaseResponse> instance

Deletes the knowledge base.

When you use this API to delete an external knowledge base such as
Salesforce or ServiceNow, you must also delete the Amazon
AppIntegrations
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
DataIntegration. This is because you can't reuse the DataIntegration
after it's been associated with an external knowledge base. However,
you can delete and recreate it. See DeleteDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html)
and CreateDataIntegration
(https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
in the I<Amazon AppIntegrations API Reference>.


=head2 DeleteQuickResponse

=over

=item KnowledgeBaseId => Str

=item QuickResponseId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::DeleteQuickResponse>

Returns: a L<Paws::Wisdom::DeleteQuickResponseResponse> instance

Deletes a quick response.


=head2 GetAssistant

=over

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::GetAssistant>

Returns: a L<Paws::Wisdom::GetAssistantResponse> instance

Retrieves information about an assistant.


=head2 GetAssistantAssociation

=over

=item AssistantAssociationId => Str

=item AssistantId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::GetAssistantAssociation>

Returns: a L<Paws::Wisdom::GetAssistantAssociationResponse> instance

Retrieves information about an assistant association.


=head2 GetContent

=over

=item ContentId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::GetContent>

Returns: a L<Paws::Wisdom::GetContentResponse> instance

Retrieves content, including a pre-signed URL to download the content.


=head2 GetContentSummary

=over

=item ContentId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::GetContentSummary>

Returns: a L<Paws::Wisdom::GetContentSummaryResponse> instance

Retrieves summary information about the content.


=head2 GetImportJob

=over

=item ImportJobId => Str

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::GetImportJob>

Returns: a L<Paws::Wisdom::GetImportJobResponse> instance

Retrieves the started import job.


=head2 GetKnowledgeBase

=over

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::GetKnowledgeBase>

Returns: a L<Paws::Wisdom::GetKnowledgeBaseResponse> instance

Retrieves information about the knowledge base.


=head2 GetQuickResponse

=over

=item KnowledgeBaseId => Str

=item QuickResponseId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::GetQuickResponse>

Returns: a L<Paws::Wisdom::GetQuickResponseResponse> instance

Retrieves the quick response.


=head2 GetRecommendations

=over

=item AssistantId => Str

=item SessionId => Str

=item [MaxResults => Int]

=item [WaitTimeSeconds => Int]


=back

Each argument is described in detail in: L<Paws::Wisdom::GetRecommendations>

Returns: a L<Paws::Wisdom::GetRecommendationsResponse> instance

Retrieves recommendations for the specified session. To avoid
retrieving the same recommendations in subsequent calls, use
NotifyRecommendationsReceived
(https://docs.aws.amazon.com/wisdom/latest/APIReference/API_NotifyRecommendationsReceived.html).
This API supports long-polling behavior with the C<waitTimeSeconds>
parameter. Short poll is the default behavior and only returns
recommendations already available. To perform a manual query against an
assistant, use QueryAssistant
(https://docs.aws.amazon.com/wisdom/latest/APIReference/API_QueryAssistant.html).


=head2 GetSession

=over

=item AssistantId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::GetSession>

Returns: a L<Paws::Wisdom::GetSessionResponse> instance

Retrieves information for a specified session.


=head2 ListAssistantAssociations

=over

=item AssistantId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::ListAssistantAssociations>

Returns: a L<Paws::Wisdom::ListAssistantAssociationsResponse> instance

Lists information about assistant associations.


=head2 ListAssistants

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::ListAssistants>

Returns: a L<Paws::Wisdom::ListAssistantsResponse> instance

Lists information about assistants.


=head2 ListContents

=over

=item KnowledgeBaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::ListContents>

Returns: a L<Paws::Wisdom::ListContentsResponse> instance

Lists the content.


=head2 ListImportJobs

=over

=item KnowledgeBaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::ListImportJobs>

Returns: a L<Paws::Wisdom::ListImportJobsResponse> instance

Lists information about import jobs.


=head2 ListKnowledgeBases

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::ListKnowledgeBases>

Returns: a L<Paws::Wisdom::ListKnowledgeBasesResponse> instance

Lists the knowledge bases.


=head2 ListQuickResponses

=over

=item KnowledgeBaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::ListQuickResponses>

Returns: a L<Paws::Wisdom::ListQuickResponsesResponse> instance

Lists information about quick response.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::ListTagsForResource>

Returns: a L<Paws::Wisdom::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 NotifyRecommendationsReceived

=over

=item AssistantId => Str

=item RecommendationIds => ArrayRef[Str|Undef]

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::NotifyRecommendationsReceived>

Returns: a L<Paws::Wisdom::NotifyRecommendationsReceivedResponse> instance

Removes the specified recommendations from the specified assistant's
queue of newly available recommendations. You can use this API in
conjunction with GetRecommendations
(https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html)
and a C<waitTimeSeconds> input for long-polling behavior and avoiding
duplicate recommendations.


=head2 QueryAssistant

=over

=item AssistantId => Str

=item QueryText => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::QueryAssistant>

Returns: a L<Paws::Wisdom::QueryAssistantResponse> instance

Performs a manual search against the specified assistant. To retrieve
recommendations for an assistant, use GetRecommendations
(https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html).


=head2 RemoveKnowledgeBaseTemplateUri

=over

=item KnowledgeBaseId => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::RemoveKnowledgeBaseTemplateUri>

Returns: a L<Paws::Wisdom::RemoveKnowledgeBaseTemplateUriResponse> instance

Removes a URI template from a knowledge base.


=head2 SearchContent

=over

=item KnowledgeBaseId => Str

=item SearchExpression => L<Paws::Wisdom::SearchExpression>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::SearchContent>

Returns: a L<Paws::Wisdom::SearchContentResponse> instance

Searches for content in a specified knowledge base. Can be used to get
a specific content resource by its name.


=head2 SearchQuickResponses

=over

=item KnowledgeBaseId => Str

=item SearchExpression => L<Paws::Wisdom::QuickResponseSearchExpression>

=item [Attributes => L<Paws::Wisdom::ContactAttributes>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::SearchQuickResponses>

Returns: a L<Paws::Wisdom::SearchQuickResponsesResponse> instance

Searches existing Wisdom quick responses in a Wisdom knowledge base.


=head2 SearchSessions

=over

=item AssistantId => Str

=item SearchExpression => L<Paws::Wisdom::SearchExpression>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::SearchSessions>

Returns: a L<Paws::Wisdom::SearchSessionsResponse> instance

Searches for sessions.


=head2 StartContentUpload

=over

=item ContentType => Str

=item KnowledgeBaseId => Str

=item [PresignedUrlTimeToLive => Int]


=back

Each argument is described in detail in: L<Paws::Wisdom::StartContentUpload>

Returns: a L<Paws::Wisdom::StartContentUploadResponse> instance

Get a URL to upload content to a knowledge base. To upload content,
first make a PUT request to the returned URL with your file, making
sure to include the required headers. Then use CreateContent
(https://docs.aws.amazon.com/wisdom/latest/APIReference/API_CreateContent.html)
to finalize the content creation process or UpdateContent
(https://docs.aws.amazon.com/wisdom/latest/APIReference/API_UpdateContent.html)
to modify an existing resource. You can only upload content to a
knowledge base of type CUSTOM.


=head2 StartImportJob

=over

=item ImportJobType => Str

=item KnowledgeBaseId => Str

=item UploadId => Str

=item [ClientToken => Str]

=item [ExternalSourceConfiguration => L<Paws::Wisdom::ExternalSourceConfiguration>]

=item [Metadata => L<Paws::Wisdom::ContentMetadata>]


=back

Each argument is described in detail in: L<Paws::Wisdom::StartImportJob>

Returns: a L<Paws::Wisdom::StartImportJobResponse> instance

Start an asynchronous job to import Wisdom resources from an uploaded
source file. Before calling this API, use StartContentUpload
(https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html)
to upload an asset that contains the resource data.

=over

=item *

For importing Wisdom quick responses, you need to upload a csv file
including the quick responses. For information about how to format the
csv file for importing quick responses, see Import quick responses
(https://docs.aws.amazon.com/console/connect/quick-responses/add-data).

=back



=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Wisdom::Tags>


=back

Each argument is described in detail in: L<Paws::Wisdom::TagResource>

Returns: a L<Paws::Wisdom::TagResourceResponse> instance

Adds the specified tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Wisdom::UntagResource>

Returns: a L<Paws::Wisdom::UntagResourceResponse> instance

Removes the specified tags from the specified resource.


=head2 UpdateContent

=over

=item ContentId => Str

=item KnowledgeBaseId => Str

=item [Metadata => L<Paws::Wisdom::ContentMetadata>]

=item [OverrideLinkOutUri => Str]

=item [RemoveOverrideLinkOutUri => Bool]

=item [RevisionId => Str]

=item [Title => Str]

=item [UploadId => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::UpdateContent>

Returns: a L<Paws::Wisdom::UpdateContentResponse> instance

Updates information about the content.


=head2 UpdateKnowledgeBaseTemplateUri

=over

=item KnowledgeBaseId => Str

=item TemplateUri => Str


=back

Each argument is described in detail in: L<Paws::Wisdom::UpdateKnowledgeBaseTemplateUri>

Returns: a L<Paws::Wisdom::UpdateKnowledgeBaseTemplateUriResponse> instance

Updates the template URI of a knowledge base. This is only supported
for knowledge bases of type EXTERNAL. Include a single variable in
C<${variable}> format; this interpolated by Wisdom using ingested
content. For example, if you ingest a Salesforce article, it has an
C<Id> value, and you can set the template URI to
C<https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view>.


=head2 UpdateQuickResponse

=over

=item KnowledgeBaseId => Str

=item QuickResponseId => Str

=item [Channels => ArrayRef[Str|Undef]]

=item [Content => L<Paws::Wisdom::QuickResponseDataProvider>]

=item [ContentType => Str]

=item [Description => Str]

=item [GroupingConfiguration => L<Paws::Wisdom::GroupingConfiguration>]

=item [IsActive => Bool]

=item [Language => Str]

=item [Name => Str]

=item [RemoveDescription => Bool]

=item [RemoveGroupingConfiguration => Bool]

=item [RemoveShortcutKey => Bool]

=item [ShortcutKey => Str]


=back

Each argument is described in detail in: L<Paws::Wisdom::UpdateQuickResponse>

Returns: a L<Paws::Wisdom::UpdateQuickResponseResponse> instance

Updates an existing Wisdom quick response.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAssistantAssociations(sub { },AssistantId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssistantAssociations(AssistantId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assistantAssociationSummaries, passing the object as the first parameter, and the string 'assistantAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::Wisdom::ListAssistantAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssistants(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAssistants([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - assistantSummaries, passing the object as the first parameter, and the string 'assistantSummaries' as the second parameter 

If not, it will return a a L<Paws::Wisdom::ListAssistantsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContents(sub { },KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllContents(KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - contentSummaries, passing the object as the first parameter, and the string 'contentSummaries' as the second parameter 

If not, it will return a a L<Paws::Wisdom::ListContentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImportJobs(sub { },KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllImportJobs(KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - importJobSummaries, passing the object as the first parameter, and the string 'importJobSummaries' as the second parameter 

If not, it will return a a L<Paws::Wisdom::ListImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKnowledgeBases(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllKnowledgeBases([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - knowledgeBaseSummaries, passing the object as the first parameter, and the string 'knowledgeBaseSummaries' as the second parameter 

If not, it will return a a L<Paws::Wisdom::ListKnowledgeBasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQuickResponses(sub { },KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllQuickResponses(KnowledgeBaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - quickResponseSummaries, passing the object as the first parameter, and the string 'quickResponseSummaries' as the second parameter 

If not, it will return a a L<Paws::Wisdom::ListQuickResponsesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 QueryAllAssistant(sub { },AssistantId => Str, QueryText => Str, [MaxResults => Int, NextToken => Str])

=head2 QueryAllAssistant(AssistantId => Str, QueryText => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - results, passing the object as the first parameter, and the string 'results' as the second parameter 

If not, it will return a a L<Paws::Wisdom::QueryAssistantResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllContent(sub { },KnowledgeBaseId => Str, SearchExpression => L<Paws::Wisdom::SearchExpression>, [MaxResults => Int, NextToken => Str])

=head2 SearchAllContent(KnowledgeBaseId => Str, SearchExpression => L<Paws::Wisdom::SearchExpression>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - contentSummaries, passing the object as the first parameter, and the string 'contentSummaries' as the second parameter 

If not, it will return a a L<Paws::Wisdom::SearchContentResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllQuickResponses(sub { },KnowledgeBaseId => Str, SearchExpression => L<Paws::Wisdom::QuickResponseSearchExpression>, [Attributes => L<Paws::Wisdom::ContactAttributes>, MaxResults => Int, NextToken => Str])

=head2 SearchAllQuickResponses(KnowledgeBaseId => Str, SearchExpression => L<Paws::Wisdom::QuickResponseSearchExpression>, [Attributes => L<Paws::Wisdom::ContactAttributes>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - results, passing the object as the first parameter, and the string 'results' as the second parameter 

If not, it will return a a L<Paws::Wisdom::SearchQuickResponsesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllSessions(sub { },AssistantId => Str, SearchExpression => L<Paws::Wisdom::SearchExpression>, [MaxResults => Int, NextToken => Str])

=head2 SearchAllSessions(AssistantId => Str, SearchExpression => L<Paws::Wisdom::SearchExpression>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sessionSummaries, passing the object as the first parameter, and the string 'sessionSummaries' as the second parameter 

If not, it will return a a L<Paws::Wisdom::SearchSessionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

