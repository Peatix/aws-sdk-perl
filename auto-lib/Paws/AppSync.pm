package Paws::AppSync;
  use Moose;
  sub service { 'appsync' }
  sub signing_name { 'appsync' }
  sub version { '2017-07-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::AssociateApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateMergedGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::AssociateMergedGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSourceGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::AssociateSourceGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApiCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateApiCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApiKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateApiKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChannelNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateChannelNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResolver {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateResolver', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApiCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteApiCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApiKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteApiKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannelNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteChannelNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResolver {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteResolver', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DisassociateApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMergedGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DisassociateMergedGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSourceGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DisassociateSourceGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EvaluateCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::EvaluateCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EvaluateMappingTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::EvaluateMappingTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FlushApiCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::FlushApiCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApiAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetApiAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApiCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetApiCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChannelNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetChannelNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSourceIntrospection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetDataSourceIntrospection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGraphqlApiEnvironmentVariables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetGraphqlApiEnvironmentVariables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntrospectionSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetIntrospectionSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolver {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetResolver', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaCreationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetSchemaCreationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSourceApiAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetSourceApiAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApiKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListApiKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListApis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannelNamespaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListChannelNamespaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListDataSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListDomainNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGraphqlApis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListGraphqlApis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolvers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListResolvers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolversByFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListResolversByFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSourceApiAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListSourceApiAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTypesByAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListTypesByAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutGraphqlApiEnvironmentVariables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::PutGraphqlApiEnvironmentVariables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataSourceIntrospection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::StartDataSourceIntrospection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSchemaCreation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::StartSchemaCreation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSchemaMerge {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::StartSchemaMerge', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApiCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateApiCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApiKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateApiKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannelNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateChannelNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResolver {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateResolver', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSourceApiAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateSourceApiAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApiKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApiKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApiKeys(@_, nextToken => $next_result->nextToken);
        push @{ $result->apiKeys }, @{ $next_result->apiKeys };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'apiKeys') foreach (@{ $result->apiKeys });
        $result = $self->ListApiKeys(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'apiKeys') foreach (@{ $result->apiKeys });
    }

    return undef
  }
  sub ListAllApis {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApis(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApis(@_, nextToken => $next_result->nextToken);
        push @{ $result->apis }, @{ $next_result->apis };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'apis') foreach (@{ $result->apis });
        $result = $self->ListApis(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'apis') foreach (@{ $result->apis });
    }

    return undef
  }
  sub ListAllChannelNamespaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChannelNamespaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListChannelNamespaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->channelNamespaces }, @{ $next_result->channelNamespaces };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'channelNamespaces') foreach (@{ $result->channelNamespaces });
        $result = $self->ListChannelNamespaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'channelNamespaces') foreach (@{ $result->channelNamespaces });
    }

    return undef
  }
  sub ListAllDataSources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataSources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataSources(@_, nextToken => $next_result->nextToken);
        push @{ $result->dataSources }, @{ $next_result->dataSources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'dataSources') foreach (@{ $result->dataSources });
        $result = $self->ListDataSources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'dataSources') foreach (@{ $result->dataSources });
    }

    return undef
  }
  sub ListAllDomainNames {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomainNames(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDomainNames(@_, nextToken => $next_result->nextToken);
        push @{ $result->domainNameConfigs }, @{ $next_result->domainNameConfigs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'domainNameConfigs') foreach (@{ $result->domainNameConfigs });
        $result = $self->ListDomainNames(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'domainNameConfigs') foreach (@{ $result->domainNameConfigs });
    }

    return undef
  }
  sub ListAllFunctions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFunctions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFunctions(@_, nextToken => $next_result->nextToken);
        push @{ $result->functions }, @{ $next_result->functions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'functions') foreach (@{ $result->functions });
        $result = $self->ListFunctions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'functions') foreach (@{ $result->functions });
    }

    return undef
  }
  sub ListAllGraphqlApis {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGraphqlApis(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListGraphqlApis(@_, nextToken => $next_result->nextToken);
        push @{ $result->graphqlApis }, @{ $next_result->graphqlApis };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'graphqlApis') foreach (@{ $result->graphqlApis });
        $result = $self->ListGraphqlApis(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'graphqlApis') foreach (@{ $result->graphqlApis });
    }

    return undef
  }
  sub ListAllResolvers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResolvers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListResolvers(@_, nextToken => $next_result->nextToken);
        push @{ $result->resolvers }, @{ $next_result->resolvers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resolvers') foreach (@{ $result->resolvers });
        $result = $self->ListResolvers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resolvers') foreach (@{ $result->resolvers });
    }

    return undef
  }
  sub ListAllResolversByFunction {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResolversByFunction(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListResolversByFunction(@_, nextToken => $next_result->nextToken);
        push @{ $result->resolvers }, @{ $next_result->resolvers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resolvers') foreach (@{ $result->resolvers });
        $result = $self->ListResolversByFunction(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resolvers') foreach (@{ $result->resolvers });
    }

    return undef
  }
  sub ListAllSourceApiAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSourceApiAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSourceApiAssociations(@_, nextToken => $next_result->nextToken);
        push @{ $result->sourceApiAssociationSummaries }, @{ $next_result->sourceApiAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sourceApiAssociationSummaries') foreach (@{ $result->sourceApiAssociationSummaries });
        $result = $self->ListSourceApiAssociations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sourceApiAssociationSummaries') foreach (@{ $result->sourceApiAssociationSummaries });
    }

    return undef
  }
  sub ListAllTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTypes(@_, nextToken => $next_result->nextToken);
        push @{ $result->types }, @{ $next_result->types };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'types') foreach (@{ $result->types });
        $result = $self->ListTypes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'types') foreach (@{ $result->types });
    }

    return undef
  }
  sub ListAllTypesByAssociation {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTypesByAssociation(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTypesByAssociation(@_, nextToken => $next_result->nextToken);
        push @{ $result->types }, @{ $next_result->types };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'types') foreach (@{ $result->types });
        $result = $self->ListTypesByAssociation(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'types') foreach (@{ $result->types });
    }

    return undef
  }


  sub operations { qw/AssociateApi AssociateMergedGraphqlApi AssociateSourceGraphqlApi CreateApi CreateApiCache CreateApiKey CreateChannelNamespace CreateDataSource CreateDomainName CreateFunction CreateGraphqlApi CreateResolver CreateType DeleteApi DeleteApiCache DeleteApiKey DeleteChannelNamespace DeleteDataSource DeleteDomainName DeleteFunction DeleteGraphqlApi DeleteResolver DeleteType DisassociateApi DisassociateMergedGraphqlApi DisassociateSourceGraphqlApi EvaluateCode EvaluateMappingTemplate FlushApiCache GetApi GetApiAssociation GetApiCache GetChannelNamespace GetDataSource GetDataSourceIntrospection GetDomainName GetFunction GetGraphqlApi GetGraphqlApiEnvironmentVariables GetIntrospectionSchema GetResolver GetSchemaCreationStatus GetSourceApiAssociation GetType ListApiKeys ListApis ListChannelNamespaces ListDataSources ListDomainNames ListFunctions ListGraphqlApis ListResolvers ListResolversByFunction ListSourceApiAssociations ListTagsForResource ListTypes ListTypesByAssociation PutGraphqlApiEnvironmentVariables StartDataSourceIntrospection StartSchemaCreation StartSchemaMerge TagResource UntagResource UpdateApi UpdateApiCache UpdateApiKey UpdateChannelNamespace UpdateDataSource UpdateDomainName UpdateFunction UpdateGraphqlApi UpdateResolver UpdateSourceApiAssociation UpdateType / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync - Perl Interface to AWS AWS AppSync

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppSync');
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

AppSync provides API actions for creating and interacting with data
sources using GraphQL from your application.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25>


=head1 METHODS

=head2 AssociateApi

=over

=item ApiId => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::AppSync::AssociateApi>

Returns: a L<Paws::AppSync::AssociateApiResponse> instance

Maps an endpoint to your custom domain.


=head2 AssociateMergedGraphqlApi

=over

=item MergedApiIdentifier => Str

=item SourceApiIdentifier => Str

=item [Description => Str]

=item [SourceApiAssociationConfig => L<Paws::AppSync::SourceApiAssociationConfig>]


=back

Each argument is described in detail in: L<Paws::AppSync::AssociateMergedGraphqlApi>

Returns: a L<Paws::AppSync::AssociateMergedGraphqlApiResponse> instance

Creates an association between a Merged API and source API using the
source API's identifier.


=head2 AssociateSourceGraphqlApi

=over

=item MergedApiIdentifier => Str

=item SourceApiIdentifier => Str

=item [Description => Str]

=item [SourceApiAssociationConfig => L<Paws::AppSync::SourceApiAssociationConfig>]


=back

Each argument is described in detail in: L<Paws::AppSync::AssociateSourceGraphqlApi>

Returns: a L<Paws::AppSync::AssociateSourceGraphqlApiResponse> instance

Creates an association between a Merged API and source API using the
Merged API's identifier.


=head2 CreateApi

=over

=item Name => Str

=item [EventConfig => L<Paws::AppSync::EventConfig>]

=item [OwnerContact => Str]

=item [Tags => L<Paws::AppSync::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppSync::CreateApi>

Returns: a L<Paws::AppSync::CreateApiResponse> instance

Creates an C<Api> object. Use this operation to create an AppSync API
with your preferred configuration, such as an Event API that provides
real-time message publishing and message subscriptions over WebSockets.


=head2 CreateApiCache

=over

=item ApiCachingBehavior => Str

=item ApiId => Str

=item Ttl => Int

=item Type => Str

=item [AtRestEncryptionEnabled => Bool]

=item [HealthMetricsConfig => Str]

=item [TransitEncryptionEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::AppSync::CreateApiCache>

Returns: a L<Paws::AppSync::CreateApiCacheResponse> instance

Creates a cache for the GraphQL API.


=head2 CreateApiKey

=over

=item ApiId => Str

=item [Description => Str]

=item [Expires => Int]


=back

Each argument is described in detail in: L<Paws::AppSync::CreateApiKey>

Returns: a L<Paws::AppSync::CreateApiKeyResponse> instance

Creates a unique key that you can distribute to clients who invoke your
API.


=head2 CreateChannelNamespace

=over

=item ApiId => Str

=item Name => Str

=item [CodeHandlers => Str]

=item [HandlerConfigs => L<Paws::AppSync::HandlerConfigs>]

=item [PublishAuthModes => ArrayRef[L<Paws::AppSync::AuthMode>]]

=item [SubscribeAuthModes => ArrayRef[L<Paws::AppSync::AuthMode>]]

=item [Tags => L<Paws::AppSync::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppSync::CreateChannelNamespace>

Returns: a L<Paws::AppSync::CreateChannelNamespaceResponse> instance

Creates a C<ChannelNamespace> for an C<Api>.


=head2 CreateDataSource

=over

=item ApiId => Str

=item Name => Str

=item Type => Str

=item [Description => Str]

=item [DynamodbConfig => L<Paws::AppSync::DynamodbDataSourceConfig>]

=item [ElasticsearchConfig => L<Paws::AppSync::ElasticsearchDataSourceConfig>]

=item [EventBridgeConfig => L<Paws::AppSync::EventBridgeDataSourceConfig>]

=item [HttpConfig => L<Paws::AppSync::HttpDataSourceConfig>]

=item [LambdaConfig => L<Paws::AppSync::LambdaDataSourceConfig>]

=item [MetricsConfig => Str]

=item [OpenSearchServiceConfig => L<Paws::AppSync::OpenSearchServiceDataSourceConfig>]

=item [RelationalDatabaseConfig => L<Paws::AppSync::RelationalDatabaseDataSourceConfig>]

=item [ServiceRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::CreateDataSource>

Returns: a L<Paws::AppSync::CreateDataSourceResponse> instance

Creates a C<DataSource> object.


=head2 CreateDomainName

=over

=item CertificateArn => Str

=item DomainName => Str

=item [Description => Str]

=item [Tags => L<Paws::AppSync::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppSync::CreateDomainName>

Returns: a L<Paws::AppSync::CreateDomainNameResponse> instance

Creates a custom C<DomainName> object.


=head2 CreateFunction

=over

=item ApiId => Str

=item DataSourceName => Str

=item Name => Str

=item [Code => Str]

=item [Description => Str]

=item [FunctionVersion => Str]

=item [MaxBatchSize => Int]

=item [RequestMappingTemplate => Str]

=item [ResponseMappingTemplate => Str]

=item [Runtime => L<Paws::AppSync::AppSyncRuntime>]

=item [SyncConfig => L<Paws::AppSync::SyncConfig>]


=back

Each argument is described in detail in: L<Paws::AppSync::CreateFunction>

Returns: a L<Paws::AppSync::CreateFunctionResponse> instance

Creates a C<Function> object.

A function is a reusable entity. You can use multiple functions to
compose the resolver logic.


=head2 CreateGraphqlApi

=over

=item AuthenticationType => Str

=item Name => Str

=item [AdditionalAuthenticationProviders => ArrayRef[L<Paws::AppSync::AdditionalAuthenticationProvider>]]

=item [ApiType => Str]

=item [EnhancedMetricsConfig => L<Paws::AppSync::EnhancedMetricsConfig>]

=item [IntrospectionConfig => Str]

=item [LambdaAuthorizerConfig => L<Paws::AppSync::LambdaAuthorizerConfig>]

=item [LogConfig => L<Paws::AppSync::LogConfig>]

=item [MergedApiExecutionRoleArn => Str]

=item [OpenIDConnectConfig => L<Paws::AppSync::OpenIDConnectConfig>]

=item [OwnerContact => Str]

=item [QueryDepthLimit => Int]

=item [ResolverCountLimit => Int]

=item [Tags => L<Paws::AppSync::TagMap>]

=item [UserPoolConfig => L<Paws::AppSync::UserPoolConfig>]

=item [Visibility => Str]

=item [XrayEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::AppSync::CreateGraphqlApi>

Returns: a L<Paws::AppSync::CreateGraphqlApiResponse> instance

Creates a C<GraphqlApi> object.


=head2 CreateResolver

=over

=item ApiId => Str

=item FieldName => Str

=item TypeName => Str

=item [CachingConfig => L<Paws::AppSync::CachingConfig>]

=item [Code => Str]

=item [DataSourceName => Str]

=item [Kind => Str]

=item [MaxBatchSize => Int]

=item [MetricsConfig => Str]

=item [PipelineConfig => L<Paws::AppSync::PipelineConfig>]

=item [RequestMappingTemplate => Str]

=item [ResponseMappingTemplate => Str]

=item [Runtime => L<Paws::AppSync::AppSyncRuntime>]

=item [SyncConfig => L<Paws::AppSync::SyncConfig>]


=back

Each argument is described in detail in: L<Paws::AppSync::CreateResolver>

Returns: a L<Paws::AppSync::CreateResolverResponse> instance

Creates a C<Resolver> object.

A resolver converts incoming requests into a format that a data source
can understand, and converts the data source's responses into GraphQL.


=head2 CreateType

=over

=item ApiId => Str

=item Definition => Str

=item Format => Str


=back

Each argument is described in detail in: L<Paws::AppSync::CreateType>

Returns: a L<Paws::AppSync::CreateTypeResponse> instance

Creates a C<Type> object.


=head2 DeleteApi

=over

=item ApiId => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DeleteApi>

Returns: a L<Paws::AppSync::DeleteApiResponse> instance

Deletes an C<Api> object


=head2 DeleteApiCache

=over

=item ApiId => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DeleteApiCache>

Returns: a L<Paws::AppSync::DeleteApiCacheResponse> instance

Deletes an C<ApiCache> object.


=head2 DeleteApiKey

=over

=item ApiId => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DeleteApiKey>

Returns: a L<Paws::AppSync::DeleteApiKeyResponse> instance

Deletes an API key.


=head2 DeleteChannelNamespace

=over

=item ApiId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DeleteChannelNamespace>

Returns: a L<Paws::AppSync::DeleteChannelNamespaceResponse> instance

Deletes a C<ChannelNamespace>.


=head2 DeleteDataSource

=over

=item ApiId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DeleteDataSource>

Returns: a L<Paws::AppSync::DeleteDataSourceResponse> instance

Deletes a C<DataSource> object.


=head2 DeleteDomainName

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DeleteDomainName>

Returns: a L<Paws::AppSync::DeleteDomainNameResponse> instance

Deletes a custom C<DomainName> object.


=head2 DeleteFunction

=over

=item ApiId => Str

=item FunctionId => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DeleteFunction>

Returns: a L<Paws::AppSync::DeleteFunctionResponse> instance

Deletes a C<Function>.


=head2 DeleteGraphqlApi

=over

=item ApiId => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DeleteGraphqlApi>

Returns: a L<Paws::AppSync::DeleteGraphqlApiResponse> instance

Deletes a C<GraphqlApi> object.


=head2 DeleteResolver

=over

=item ApiId => Str

=item FieldName => Str

=item TypeName => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DeleteResolver>

Returns: a L<Paws::AppSync::DeleteResolverResponse> instance

Deletes a C<Resolver> object.


=head2 DeleteType

=over

=item ApiId => Str

=item TypeName => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DeleteType>

Returns: a L<Paws::AppSync::DeleteTypeResponse> instance

Deletes a C<Type> object.


=head2 DisassociateApi

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DisassociateApi>

Returns: a L<Paws::AppSync::DisassociateApiResponse> instance

Removes an C<ApiAssociation> object from a custom domain.


=head2 DisassociateMergedGraphqlApi

=over

=item AssociationId => Str

=item SourceApiIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DisassociateMergedGraphqlApi>

Returns: a L<Paws::AppSync::DisassociateMergedGraphqlApiResponse> instance

Deletes an association between a Merged API and source API using the
source API's identifier and the association ID.


=head2 DisassociateSourceGraphqlApi

=over

=item AssociationId => Str

=item MergedApiIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppSync::DisassociateSourceGraphqlApi>

Returns: a L<Paws::AppSync::DisassociateSourceGraphqlApiResponse> instance

Deletes an association between a Merged API and source API using the
Merged API's identifier and the association ID.


=head2 EvaluateCode

=over

=item Code => Str

=item Context => Str

=item Runtime => L<Paws::AppSync::AppSyncRuntime>

=item [Function => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::EvaluateCode>

Returns: a L<Paws::AppSync::EvaluateCodeResponse> instance

Evaluates the given code and returns the response. The code definition
requirements depend on the specified runtime. For C<APPSYNC_JS>
runtimes, the code defines the request and response functions. The
request function takes the incoming request after a GraphQL operation
is parsed and converts it into a request configuration for the selected
data source operation. The response function interprets responses from
the data source and maps it to the shape of the GraphQL field output
type.


=head2 EvaluateMappingTemplate

=over

=item Context => Str

=item Template => Str


=back

Each argument is described in detail in: L<Paws::AppSync::EvaluateMappingTemplate>

Returns: a L<Paws::AppSync::EvaluateMappingTemplateResponse> instance

Evaluates a given template and returns the response. The mapping
template can be a request or response template.

Request templates take the incoming request after a GraphQL operation
is parsed and convert it into a request configuration for the selected
data source operation. Response templates interpret responses from the
data source and map it to the shape of the GraphQL field output type.

Mapping templates are written in the Apache Velocity Template Language
(VTL).


=head2 FlushApiCache

=over

=item ApiId => Str


=back

Each argument is described in detail in: L<Paws::AppSync::FlushApiCache>

Returns: a L<Paws::AppSync::FlushApiCacheResponse> instance

Flushes an C<ApiCache> object.


=head2 GetApi

=over

=item ApiId => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetApi>

Returns: a L<Paws::AppSync::GetApiResponse> instance

Retrieves an C<Api> object.


=head2 GetApiAssociation

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetApiAssociation>

Returns: a L<Paws::AppSync::GetApiAssociationResponse> instance

Retrieves an C<ApiAssociation> object.


=head2 GetApiCache

=over

=item ApiId => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetApiCache>

Returns: a L<Paws::AppSync::GetApiCacheResponse> instance

Retrieves an C<ApiCache> object.


=head2 GetChannelNamespace

=over

=item ApiId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetChannelNamespace>

Returns: a L<Paws::AppSync::GetChannelNamespaceResponse> instance

Retrieves the channel namespace for a specified C<Api>.


=head2 GetDataSource

=over

=item ApiId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetDataSource>

Returns: a L<Paws::AppSync::GetDataSourceResponse> instance

Retrieves a C<DataSource> object.


=head2 GetDataSourceIntrospection

=over

=item IntrospectionId => Str

=item [IncludeModelsSDL => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::GetDataSourceIntrospection>

Returns: a L<Paws::AppSync::GetDataSourceIntrospectionResponse> instance

Retrieves the record of an existing introspection. If the retrieval is
successful, the result of the instrospection will also be returned. If
the retrieval fails the operation, an error message will be returned
instead.


=head2 GetDomainName

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetDomainName>

Returns: a L<Paws::AppSync::GetDomainNameResponse> instance

Retrieves a custom C<DomainName> object.


=head2 GetFunction

=over

=item ApiId => Str

=item FunctionId => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetFunction>

Returns: a L<Paws::AppSync::GetFunctionResponse> instance

Get a C<Function>.


=head2 GetGraphqlApi

=over

=item ApiId => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetGraphqlApi>

Returns: a L<Paws::AppSync::GetGraphqlApiResponse> instance

Retrieves a C<GraphqlApi> object.


=head2 GetGraphqlApiEnvironmentVariables

=over

=item ApiId => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetGraphqlApiEnvironmentVariables>

Returns: a L<Paws::AppSync::GetGraphqlApiEnvironmentVariablesResponse> instance

Retrieves the list of environmental variable key-value pairs associated
with an API by its ID value.


=head2 GetIntrospectionSchema

=over

=item ApiId => Str

=item Format => Str

=item [IncludeDirectives => Bool]


=back

Each argument is described in detail in: L<Paws::AppSync::GetIntrospectionSchema>

Returns: a L<Paws::AppSync::GetIntrospectionSchemaResponse> instance

Retrieves the introspection schema for a GraphQL API.


=head2 GetResolver

=over

=item ApiId => Str

=item FieldName => Str

=item TypeName => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetResolver>

Returns: a L<Paws::AppSync::GetResolverResponse> instance

Retrieves a C<Resolver> object.


=head2 GetSchemaCreationStatus

=over

=item ApiId => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetSchemaCreationStatus>

Returns: a L<Paws::AppSync::GetSchemaCreationStatusResponse> instance

Retrieves the current status of a schema creation operation.


=head2 GetSourceApiAssociation

=over

=item AssociationId => Str

=item MergedApiIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetSourceApiAssociation>

Returns: a L<Paws::AppSync::GetSourceApiAssociationResponse> instance

Retrieves a C<SourceApiAssociation> object.


=head2 GetType

=over

=item ApiId => Str

=item Format => Str

=item TypeName => Str


=back

Each argument is described in detail in: L<Paws::AppSync::GetType>

Returns: a L<Paws::AppSync::GetTypeResponse> instance

Retrieves a C<Type> object.


=head2 ListApiKeys

=over

=item ApiId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListApiKeys>

Returns: a L<Paws::AppSync::ListApiKeysResponse> instance

Lists the API keys for a given API.

API keys are deleted automatically 60 days after they expire. However,
they may still be included in the response until they have actually
been deleted. You can safely call C<DeleteApiKey> to manually delete a
key before it's automatically deleted.


=head2 ListApis

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListApis>

Returns: a L<Paws::AppSync::ListApisResponse> instance

Lists the APIs in your AppSync account.

C<ListApis> returns only the high level API details. For more detailed
information about an API, use C<GetApi>.


=head2 ListChannelNamespaces

=over

=item ApiId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListChannelNamespaces>

Returns: a L<Paws::AppSync::ListChannelNamespacesResponse> instance

Lists the channel namespaces for a specified C<Api>.

C<ListChannelNamespaces> returns only high level details for the
channel namespace. To retrieve code handlers, use
C<GetChannelNamespace>.


=head2 ListDataSources

=over

=item ApiId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListDataSources>

Returns: a L<Paws::AppSync::ListDataSourcesResponse> instance

Lists the data sources for a given API.


=head2 ListDomainNames

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListDomainNames>

Returns: a L<Paws::AppSync::ListDomainNamesResponse> instance

Lists multiple custom domain names.


=head2 ListFunctions

=over

=item ApiId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListFunctions>

Returns: a L<Paws::AppSync::ListFunctionsResponse> instance

List multiple functions.


=head2 ListGraphqlApis

=over

=item [ApiType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListGraphqlApis>

Returns: a L<Paws::AppSync::ListGraphqlApisResponse> instance

Lists your GraphQL APIs.


=head2 ListResolvers

=over

=item ApiId => Str

=item TypeName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListResolvers>

Returns: a L<Paws::AppSync::ListResolversResponse> instance

Lists the resolvers for a given API and type.


=head2 ListResolversByFunction

=over

=item ApiId => Str

=item FunctionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListResolversByFunction>

Returns: a L<Paws::AppSync::ListResolversByFunctionResponse> instance

List the resolvers that are associated with a specific function.


=head2 ListSourceApiAssociations

=over

=item ApiId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListSourceApiAssociations>

Returns: a L<Paws::AppSync::ListSourceApiAssociationsResponse> instance

Lists the C<SourceApiAssociationSummary> data.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AppSync::ListTagsForResource>

Returns: a L<Paws::AppSync::ListTagsForResourceResponse> instance

Lists the tags for a resource.


=head2 ListTypes

=over

=item ApiId => Str

=item Format => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListTypes>

Returns: a L<Paws::AppSync::ListTypesResponse> instance

Lists the types for a given API.


=head2 ListTypesByAssociation

=over

=item AssociationId => Str

=item Format => Str

=item MergedApiIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::ListTypesByAssociation>

Returns: a L<Paws::AppSync::ListTypesByAssociationResponse> instance

Lists C<Type> objects by the source API association ID.


=head2 PutGraphqlApiEnvironmentVariables

=over

=item ApiId => Str

=item EnvironmentVariables => L<Paws::AppSync::EnvironmentVariableMap>


=back

Each argument is described in detail in: L<Paws::AppSync::PutGraphqlApiEnvironmentVariables>

Returns: a L<Paws::AppSync::PutGraphqlApiEnvironmentVariablesResponse> instance

Creates a list of environmental variables in an API by its ID value.

When creating an environmental variable, it must follow the constraints
below:

=over

=item *

Both JavaScript and VTL templates support environmental variables.

=item *

Environmental variables are not evaluated before function invocation.

=item *

Environmental variables only support string values.

=item *

Any defined value in an environmental variable is considered a string
literal and not expanded.

=item *

Variable evaluations should ideally be performed in the function code.

=back

When creating an environmental variable key-value pair, it must follow
the additional constraints below:

=over

=item *

Keys must begin with a letter.

=item *

Keys must be at least two characters long.

=item *

Keys can only contain letters, numbers, and the underscore character
(_).

=item *

Values can be up to 512 characters long.

=item *

You can configure up to 50 key-value pairs in a GraphQL API.

=back

You can create a list of environmental variables by adding it to the
C<environmentVariables> payload as a list in the format
C<{"key1":"value1","key2":"value2", E<hellip>}>. Note that each call of
the C<PutGraphqlApiEnvironmentVariables> action will result in the
overwriting of the existing environmental variable list of that API.
This means the existing environmental variables will be lost. To avoid
this, you must include all existing and new environmental variables in
the list each time you call this action.


=head2 StartDataSourceIntrospection

=over

=item [RdsDataApiConfig => L<Paws::AppSync::RdsDataApiConfig>]


=back

Each argument is described in detail in: L<Paws::AppSync::StartDataSourceIntrospection>

Returns: a L<Paws::AppSync::StartDataSourceIntrospectionResponse> instance

Creates a new introspection. Returns the C<introspectionId> of the new
introspection after its creation.


=head2 StartSchemaCreation

=over

=item ApiId => Str

=item Definition => Str


=back

Each argument is described in detail in: L<Paws::AppSync::StartSchemaCreation>

Returns: a L<Paws::AppSync::StartSchemaCreationResponse> instance

Adds a new schema to your GraphQL API.

This operation is asynchronous. Use to determine when it has completed.


=head2 StartSchemaMerge

=over

=item AssociationId => Str

=item MergedApiIdentifier => Str


=back

Each argument is described in detail in: L<Paws::AppSync::StartSchemaMerge>

Returns: a L<Paws::AppSync::StartSchemaMergeResponse> instance

Initiates a merge operation. Returns a status that shows the result of
the merge operation.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::AppSync::TagMap>


=back

Each argument is described in detail in: L<Paws::AppSync::TagResource>

Returns: a L<Paws::AppSync::TagResourceResponse> instance

Tags a resource with user-supplied tags.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppSync::UntagResource>

Returns: a L<Paws::AppSync::UntagResourceResponse> instance

Untags a resource.


=head2 UpdateApi

=over

=item ApiId => Str

=item Name => Str

=item [EventConfig => L<Paws::AppSync::EventConfig>]

=item [OwnerContact => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::UpdateApi>

Returns: a L<Paws::AppSync::UpdateApiResponse> instance

Updates an C<Api>.


=head2 UpdateApiCache

=over

=item ApiCachingBehavior => Str

=item ApiId => Str

=item Ttl => Int

=item Type => Str

=item [HealthMetricsConfig => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::UpdateApiCache>

Returns: a L<Paws::AppSync::UpdateApiCacheResponse> instance

Updates the cache for the GraphQL API.


=head2 UpdateApiKey

=over

=item ApiId => Str

=item Id => Str

=item [Description => Str]

=item [Expires => Int]


=back

Each argument is described in detail in: L<Paws::AppSync::UpdateApiKey>

Returns: a L<Paws::AppSync::UpdateApiKeyResponse> instance

Updates an API key. You can update the key as long as it's not deleted.


=head2 UpdateChannelNamespace

=over

=item ApiId => Str

=item Name => Str

=item [CodeHandlers => Str]

=item [HandlerConfigs => L<Paws::AppSync::HandlerConfigs>]

=item [PublishAuthModes => ArrayRef[L<Paws::AppSync::AuthMode>]]

=item [SubscribeAuthModes => ArrayRef[L<Paws::AppSync::AuthMode>]]


=back

Each argument is described in detail in: L<Paws::AppSync::UpdateChannelNamespace>

Returns: a L<Paws::AppSync::UpdateChannelNamespaceResponse> instance

Updates a C<ChannelNamespace> associated with an C<Api>.


=head2 UpdateDataSource

=over

=item ApiId => Str

=item Name => Str

=item Type => Str

=item [Description => Str]

=item [DynamodbConfig => L<Paws::AppSync::DynamodbDataSourceConfig>]

=item [ElasticsearchConfig => L<Paws::AppSync::ElasticsearchDataSourceConfig>]

=item [EventBridgeConfig => L<Paws::AppSync::EventBridgeDataSourceConfig>]

=item [HttpConfig => L<Paws::AppSync::HttpDataSourceConfig>]

=item [LambdaConfig => L<Paws::AppSync::LambdaDataSourceConfig>]

=item [MetricsConfig => Str]

=item [OpenSearchServiceConfig => L<Paws::AppSync::OpenSearchServiceDataSourceConfig>]

=item [RelationalDatabaseConfig => L<Paws::AppSync::RelationalDatabaseDataSourceConfig>]

=item [ServiceRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::UpdateDataSource>

Returns: a L<Paws::AppSync::UpdateDataSourceResponse> instance

Updates a C<DataSource> object.


=head2 UpdateDomainName

=over

=item DomainName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::UpdateDomainName>

Returns: a L<Paws::AppSync::UpdateDomainNameResponse> instance

Updates a custom C<DomainName> object.


=head2 UpdateFunction

=over

=item ApiId => Str

=item DataSourceName => Str

=item FunctionId => Str

=item Name => Str

=item [Code => Str]

=item [Description => Str]

=item [FunctionVersion => Str]

=item [MaxBatchSize => Int]

=item [RequestMappingTemplate => Str]

=item [ResponseMappingTemplate => Str]

=item [Runtime => L<Paws::AppSync::AppSyncRuntime>]

=item [SyncConfig => L<Paws::AppSync::SyncConfig>]


=back

Each argument is described in detail in: L<Paws::AppSync::UpdateFunction>

Returns: a L<Paws::AppSync::UpdateFunctionResponse> instance

Updates a C<Function> object.


=head2 UpdateGraphqlApi

=over

=item ApiId => Str

=item AuthenticationType => Str

=item Name => Str

=item [AdditionalAuthenticationProviders => ArrayRef[L<Paws::AppSync::AdditionalAuthenticationProvider>]]

=item [EnhancedMetricsConfig => L<Paws::AppSync::EnhancedMetricsConfig>]

=item [IntrospectionConfig => Str]

=item [LambdaAuthorizerConfig => L<Paws::AppSync::LambdaAuthorizerConfig>]

=item [LogConfig => L<Paws::AppSync::LogConfig>]

=item [MergedApiExecutionRoleArn => Str]

=item [OpenIDConnectConfig => L<Paws::AppSync::OpenIDConnectConfig>]

=item [OwnerContact => Str]

=item [QueryDepthLimit => Int]

=item [ResolverCountLimit => Int]

=item [UserPoolConfig => L<Paws::AppSync::UserPoolConfig>]

=item [XrayEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::AppSync::UpdateGraphqlApi>

Returns: a L<Paws::AppSync::UpdateGraphqlApiResponse> instance

Updates a C<GraphqlApi> object.


=head2 UpdateResolver

=over

=item ApiId => Str

=item FieldName => Str

=item TypeName => Str

=item [CachingConfig => L<Paws::AppSync::CachingConfig>]

=item [Code => Str]

=item [DataSourceName => Str]

=item [Kind => Str]

=item [MaxBatchSize => Int]

=item [MetricsConfig => Str]

=item [PipelineConfig => L<Paws::AppSync::PipelineConfig>]

=item [RequestMappingTemplate => Str]

=item [ResponseMappingTemplate => Str]

=item [Runtime => L<Paws::AppSync::AppSyncRuntime>]

=item [SyncConfig => L<Paws::AppSync::SyncConfig>]


=back

Each argument is described in detail in: L<Paws::AppSync::UpdateResolver>

Returns: a L<Paws::AppSync::UpdateResolverResponse> instance

Updates a C<Resolver> object.


=head2 UpdateSourceApiAssociation

=over

=item AssociationId => Str

=item MergedApiIdentifier => Str

=item [Description => Str]

=item [SourceApiAssociationConfig => L<Paws::AppSync::SourceApiAssociationConfig>]


=back

Each argument is described in detail in: L<Paws::AppSync::UpdateSourceApiAssociation>

Returns: a L<Paws::AppSync::UpdateSourceApiAssociationResponse> instance

Updates some of the configuration choices of a particular source API
association.


=head2 UpdateType

=over

=item ApiId => Str

=item Format => Str

=item TypeName => Str

=item [Definition => Str]


=back

Each argument is described in detail in: L<Paws::AppSync::UpdateType>

Returns: a L<Paws::AppSync::UpdateTypeResponse> instance

Updates a C<Type> object.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApiKeys(sub { },ApiId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllApiKeys(ApiId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - apiKeys, passing the object as the first parameter, and the string 'apiKeys' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListApiKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApis(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllApis([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - apis, passing the object as the first parameter, and the string 'apis' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListApisResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllChannelNamespaces(sub { },ApiId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllChannelNamespaces(ApiId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - channelNamespaces, passing the object as the first parameter, and the string 'channelNamespaces' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListChannelNamespacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataSources(sub { },ApiId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataSources(ApiId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - dataSources, passing the object as the first parameter, and the string 'dataSources' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListDataSourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDomainNames(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDomainNames([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - domainNameConfigs, passing the object as the first parameter, and the string 'domainNameConfigs' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListDomainNamesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFunctions(sub { },ApiId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFunctions(ApiId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - functions, passing the object as the first parameter, and the string 'functions' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListFunctionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGraphqlApis(sub { },[ApiType => Str, MaxResults => Int, NextToken => Str, Owner => Str])

=head2 ListAllGraphqlApis([ApiType => Str, MaxResults => Int, NextToken => Str, Owner => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - graphqlApis, passing the object as the first parameter, and the string 'graphqlApis' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListGraphqlApisResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResolvers(sub { },ApiId => Str, TypeName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllResolvers(ApiId => Str, TypeName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resolvers, passing the object as the first parameter, and the string 'resolvers' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListResolversResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResolversByFunction(sub { },ApiId => Str, FunctionId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllResolversByFunction(ApiId => Str, FunctionId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resolvers, passing the object as the first parameter, and the string 'resolvers' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListResolversByFunctionResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSourceApiAssociations(sub { },ApiId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSourceApiAssociations(ApiId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sourceApiAssociationSummaries, passing the object as the first parameter, and the string 'sourceApiAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListSourceApiAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTypes(sub { },ApiId => Str, Format => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTypes(ApiId => Str, Format => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - types, passing the object as the first parameter, and the string 'types' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListTypesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTypesByAssociation(sub { },AssociationId => Str, Format => Str, MergedApiIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTypesByAssociation(AssociationId => Str, Format => Str, MergedApiIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - types, passing the object as the first parameter, and the string 'types' as the second parameter 

If not, it will return a a L<Paws::AppSync::ListTypesByAssociationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

