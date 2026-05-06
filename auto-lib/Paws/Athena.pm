package Paws::Athena;
  use Moose;
  sub service { 'athena' }
  sub signing_name { 'athena' }
  sub version { '2017-05-18' }
  sub target_prefix { 'AmazonAthena' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchGetNamedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::BatchGetNamedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetPreparedStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::BatchGetPreparedStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetQueryExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::BatchGetQueryExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::CancelCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::CreateCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::CreateDataCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNamedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::CreateNamedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNotebook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::CreateNotebook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePreparedStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::CreatePreparedStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePresignedNotebookUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::CreatePresignedNotebookUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::CreateWorkGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::DeleteCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::DeleteDataCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNamedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::DeleteNamedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotebook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::DeleteNotebook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePreparedStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::DeletePreparedStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::DeleteWorkGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportNotebook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ExportNotebook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCalculationExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetCalculationExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCalculationExecutionCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetCalculationExecutionCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCalculationExecutionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetCalculationExecutionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCapacityAssignmentConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetCapacityAssignmentConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetDataCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNamedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetNamedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNotebookMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetNotebookMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPreparedStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetPreparedStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetQueryExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetQueryResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryRuntimeStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetQueryRuntimeStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSessionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetSessionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetTableMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::GetWorkGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportNotebook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ImportNotebook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationDPUSizes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListApplicationDPUSizes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCalculationExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListCalculationExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCapacityReservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListCapacityReservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataCatalogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListDataCatalogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEngineVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListEngineVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExecutors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListExecutors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNamedQueries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListNamedQueries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotebookMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListNotebookMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotebookSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListNotebookSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPreparedStatements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListPreparedStatements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueryExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListQueryExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTableMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListTableMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::ListWorkGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutCapacityAssignmentConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::PutCapacityAssignmentConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCalculationExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::StartCalculationExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartQueryExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::StartQueryExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::StartSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCalculationExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::StopCalculationExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopQueryExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::StopQueryExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::TerminateSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::UpdateCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::UpdateDataCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNamedQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::UpdateNamedQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotebook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::UpdateNotebook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotebookMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::UpdateNotebookMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePreparedStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::UpdatePreparedStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Athena::UpdateWorkGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllQueryResults {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetQueryResults(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetQueryResults(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResultSet->Rows }, @{ $next_result->ResultSet->Rows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResultSet.Rows') foreach (@{ $result->ResultSet->Rows });
        $result = $self->GetQueryResults(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResultSet.Rows') foreach (@{ $result->ResultSet->Rows });
    }

    return undef
  }
  sub ListAllDatabases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatabases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatabases(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatabaseList }, @{ $next_result->DatabaseList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatabaseList') foreach (@{ $result->DatabaseList });
        $result = $self->ListDatabases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatabaseList') foreach (@{ $result->DatabaseList });
    }

    return undef
  }
  sub ListAllDataCatalogs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataCatalogs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDataCatalogs(@_, NextToken => $next_result->NextToken);
        push @{ $result->DataCatalogsSummary }, @{ $next_result->DataCatalogsSummary };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DataCatalogsSummary') foreach (@{ $result->DataCatalogsSummary });
        $result = $self->ListDataCatalogs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DataCatalogsSummary') foreach (@{ $result->DataCatalogsSummary });
    }

    return undef
  }
  sub ListAllNamedQueries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNamedQueries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNamedQueries(@_, NextToken => $next_result->NextToken);
        push @{ $result->NamedQueryIds }, @{ $next_result->NamedQueryIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NamedQueryIds') foreach (@{ $result->NamedQueryIds });
        $result = $self->ListNamedQueries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NamedQueryIds') foreach (@{ $result->NamedQueryIds });
    }

    return undef
  }
  sub ListAllQueryExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueryExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListQueryExecutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->QueryExecutionIds }, @{ $next_result->QueryExecutionIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'QueryExecutionIds') foreach (@{ $result->QueryExecutionIds });
        $result = $self->ListQueryExecutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'QueryExecutionIds') foreach (@{ $result->QueryExecutionIds });
    }

    return undef
  }
  sub ListAllTableMetadata {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTableMetadata(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTableMetadata(@_, NextToken => $next_result->NextToken);
        push @{ $result->TableMetadataList }, @{ $next_result->TableMetadataList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TableMetadataList') foreach (@{ $result->TableMetadataList });
        $result = $self->ListTableMetadata(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TableMetadataList') foreach (@{ $result->TableMetadataList });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }


  sub operations { qw/BatchGetNamedQuery BatchGetPreparedStatement BatchGetQueryExecution CancelCapacityReservation CreateCapacityReservation CreateDataCatalog CreateNamedQuery CreateNotebook CreatePreparedStatement CreatePresignedNotebookUrl CreateWorkGroup DeleteCapacityReservation DeleteDataCatalog DeleteNamedQuery DeleteNotebook DeletePreparedStatement DeleteWorkGroup ExportNotebook GetCalculationExecution GetCalculationExecutionCode GetCalculationExecutionStatus GetCapacityAssignmentConfiguration GetCapacityReservation GetDatabase GetDataCatalog GetNamedQuery GetNotebookMetadata GetPreparedStatement GetQueryExecution GetQueryResults GetQueryRuntimeStatistics GetSession GetSessionStatus GetTableMetadata GetWorkGroup ImportNotebook ListApplicationDPUSizes ListCalculationExecutions ListCapacityReservations ListDatabases ListDataCatalogs ListEngineVersions ListExecutors ListNamedQueries ListNotebookMetadata ListNotebookSessions ListPreparedStatements ListQueryExecutions ListSessions ListTableMetadata ListTagsForResource ListWorkGroups PutCapacityAssignmentConfiguration StartCalculationExecution StartQueryExecution StartSession StopCalculationExecution StopQueryExecution TagResource TerminateSession UntagResource UpdateCapacityReservation UpdateDataCatalog UpdateNamedQuery UpdateNotebook UpdateNotebookMetadata UpdatePreparedStatement UpdateWorkGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena - Perl Interface to AWS Amazon Athena

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Athena');
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

Amazon Athena is an interactive query service that lets you use
standard SQL to analyze data directly in Amazon S3. You can point
Athena at your data in Amazon S3 and run ad-hoc queries and get results
in seconds. Athena is serverless, so there is no infrastructure to set
up or manage. You pay only for the queries you run. Athena scales
automaticallyE<mdash>executing queries in parallelE<mdash>so results
are fast, even with large datasets and complex queries. For more
information, see What is Amazon Athena
(http://docs.aws.amazon.com/athena/latest/ug/what-is.html) in the
I<Amazon Athena User Guide>.

If you connect to Athena using the JDBC driver, use version 1.1.0 of
the driver or later with the Amazon Athena API. Earlier version drivers
do not support the API. For more information and to download the
driver, see Accessing Amazon Athena with JDBC
(https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchGetNamedQuery

=over

=item NamedQueryIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Athena::BatchGetNamedQuery>

Returns: a L<Paws::Athena::BatchGetNamedQueryOutput> instance

Returns the details of a single named query or a list of up to 50
queries, which you provide as an array of query ID strings. Requires
you to have access to the workgroup in which the queries were saved.
Use ListNamedQueriesInput to get the list of named query IDs in the
specified workgroup. If information could not be retrieved for a
submitted query ID, information about the query ID submitted is listed
under UnprocessedNamedQueryId. Named queries differ from executed
queries. Use BatchGetQueryExecutionInput to get details about each
unique query execution, and ListQueryExecutionsInput to get a list of
query execution IDs.


=head2 BatchGetPreparedStatement

=over

=item PreparedStatementNames => ArrayRef[Str|Undef]

=item WorkGroup => Str


=back

Each argument is described in detail in: L<Paws::Athena::BatchGetPreparedStatement>

Returns: a L<Paws::Athena::BatchGetPreparedStatementOutput> instance

Returns the details of a single prepared statement or a list of up to
256 prepared statements for the array of prepared statement names that
you provide. Requires you to have access to the workgroup to which the
prepared statements belong. If a prepared statement cannot be retrieved
for the name specified, the statement is listed in
C<UnprocessedPreparedStatementNames>.


=head2 BatchGetQueryExecution

=over

=item QueryExecutionIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Athena::BatchGetQueryExecution>

Returns: a L<Paws::Athena::BatchGetQueryExecutionOutput> instance

Returns the details of a single query execution or a list of up to 50
query executions, which you provide as an array of query execution ID
strings. Requires you to have access to the workgroup in which the
queries ran. To get a list of query execution IDs, use
ListQueryExecutionsInput$WorkGroup. Query executions differ from named
(saved) queries. Use BatchGetNamedQueryInput to get details about named
queries.


=head2 CancelCapacityReservation

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Athena::CancelCapacityReservation>

Returns: a L<Paws::Athena::CancelCapacityReservationOutput> instance

Cancels the capacity reservation with the specified name. Cancelled
reservations remain in your account and will be deleted 45 days after
cancellation. During the 45 days, you cannot re-purpose or reuse a
reservation that has been cancelled, but you can refer to its tags and
view it for historical reference.


=head2 CreateCapacityReservation

=over

=item Name => Str

=item TargetDpus => Int

=item [Tags => ArrayRef[L<Paws::Athena::Tag>]]


=back

Each argument is described in detail in: L<Paws::Athena::CreateCapacityReservation>

Returns: a L<Paws::Athena::CreateCapacityReservationOutput> instance

Creates a capacity reservation with the specified name and number of
requested data processing units.


=head2 CreateDataCatalog

=over

=item Name => Str

=item Type => Str

=item [Description => Str]

=item [Parameters => L<Paws::Athena::ParametersMap>]

=item [Tags => ArrayRef[L<Paws::Athena::Tag>]]


=back

Each argument is described in detail in: L<Paws::Athena::CreateDataCatalog>

Returns: a L<Paws::Athena::CreateDataCatalogOutput> instance

Creates (registers) a data catalog with the specified name and
properties. Catalogs created are visible to all users of the same
Amazon Web Services account.

For a C<FEDERATED> catalog, this API operation creates the following
resources.

=over

=item *

CFN Stack Name with a maximum length of 128 characters and prefix
C<athenafederatedcatalog-CATALOG_NAME_SANITIZED> with length 23
characters.

=item *

Lambda Function Name with a maximum length of 64 characters and prefix
C<athenafederatedcatalog_CATALOG_NAME_SANITIZED> with length 23
characters.

=item *

Glue Connection Name with a maximum length of 255 characters and a
prefix C<athenafederatedcatalog_CATALOG_NAME_SANITIZED> with length 23
characters.

=back



=head2 CreateNamedQuery

=over

=item Database => Str

=item Name => Str

=item QueryString => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::CreateNamedQuery>

Returns: a L<Paws::Athena::CreateNamedQueryOutput> instance

Creates a named query in the specified workgroup. Requires that you
have access to the workgroup.


=head2 CreateNotebook

=over

=item Name => Str

=item WorkGroup => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::CreateNotebook>

Returns: a L<Paws::Athena::CreateNotebookOutput> instance

Creates an empty C<ipynb> file in the specified Apache Spark enabled
workgroup. Throws an error if a file in the workgroup with the same
name already exists.


=head2 CreatePreparedStatement

=over

=item QueryStatement => Str

=item StatementName => Str

=item WorkGroup => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Athena::CreatePreparedStatement>

Returns: a L<Paws::Athena::CreatePreparedStatementOutput> instance

Creates a prepared statement for use with SQL queries in Athena.


=head2 CreatePresignedNotebookUrl

=over

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::CreatePresignedNotebookUrl>

Returns: a L<Paws::Athena::CreatePresignedNotebookUrlResponse> instance

Gets an authentication token and the URL at which the notebook can be
accessed. During programmatic access, C<CreatePresignedNotebookUrl>
must be called every 10 minutes to refresh the authentication token.
For information about granting programmatic access, see Grant
programmatic access
(https://docs.aws.amazon.com/athena/latest/ug/setting-up.html#setting-up-grant-programmatic-access).


=head2 CreateWorkGroup

=over

=item Name => Str

=item [Configuration => L<Paws::Athena::WorkGroupConfiguration>]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::Athena::Tag>]]


=back

Each argument is described in detail in: L<Paws::Athena::CreateWorkGroup>

Returns: a L<Paws::Athena::CreateWorkGroupOutput> instance

Creates a workgroup with the specified name. A workgroup can be an
Apache Spark enabled workgroup or an Athena SQL workgroup.


=head2 DeleteCapacityReservation

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Athena::DeleteCapacityReservation>

Returns: a L<Paws::Athena::DeleteCapacityReservationOutput> instance

Deletes a cancelled capacity reservation. A reservation must be
cancelled before it can be deleted. A deleted reservation is
immediately removed from your account and can no longer be referenced,
including by its ARN. A deleted reservation cannot be called by
C<GetCapacityReservation>, and deleted reservations do not appear in
the output of C<ListCapacityReservations>.


=head2 DeleteDataCatalog

=over

=item Name => Str

=item [DeleteCatalogOnly => Bool]


=back

Each argument is described in detail in: L<Paws::Athena::DeleteDataCatalog>

Returns: a L<Paws::Athena::DeleteDataCatalogOutput> instance

Deletes a data catalog.


=head2 DeleteNamedQuery

=over

=item NamedQueryId => Str


=back

Each argument is described in detail in: L<Paws::Athena::DeleteNamedQuery>

Returns: a L<Paws::Athena::DeleteNamedQueryOutput> instance

Deletes the named query if you have access to the workgroup in which
the query was saved.


=head2 DeleteNotebook

=over

=item NotebookId => Str


=back

Each argument is described in detail in: L<Paws::Athena::DeleteNotebook>

Returns: a L<Paws::Athena::DeleteNotebookOutput> instance

Deletes the specified notebook.


=head2 DeletePreparedStatement

=over

=item StatementName => Str

=item WorkGroup => Str


=back

Each argument is described in detail in: L<Paws::Athena::DeletePreparedStatement>

Returns: a L<Paws::Athena::DeletePreparedStatementOutput> instance

Deletes the prepared statement with the specified name from the
specified workgroup.


=head2 DeleteWorkGroup

=over

=item WorkGroup => Str

=item [RecursiveDeleteOption => Bool]


=back

Each argument is described in detail in: L<Paws::Athena::DeleteWorkGroup>

Returns: a L<Paws::Athena::DeleteWorkGroupOutput> instance

Deletes the workgroup with the specified name. The primary workgroup
cannot be deleted.


=head2 ExportNotebook

=over

=item NotebookId => Str


=back

Each argument is described in detail in: L<Paws::Athena::ExportNotebook>

Returns: a L<Paws::Athena::ExportNotebookOutput> instance

Exports the specified notebook and its metadata.


=head2 GetCalculationExecution

=over

=item CalculationExecutionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetCalculationExecution>

Returns: a L<Paws::Athena::GetCalculationExecutionResponse> instance

Describes a previously submitted calculation execution.


=head2 GetCalculationExecutionCode

=over

=item CalculationExecutionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetCalculationExecutionCode>

Returns: a L<Paws::Athena::GetCalculationExecutionCodeResponse> instance

Retrieves the unencrypted code that was executed for the calculation.


=head2 GetCalculationExecutionStatus

=over

=item CalculationExecutionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetCalculationExecutionStatus>

Returns: a L<Paws::Athena::GetCalculationExecutionStatusResponse> instance

Gets the status of a current calculation.


=head2 GetCapacityAssignmentConfiguration

=over

=item CapacityReservationName => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetCapacityAssignmentConfiguration>

Returns: a L<Paws::Athena::GetCapacityAssignmentConfigurationOutput> instance

Gets the capacity assignment configuration for a capacity reservation,
if one exists.


=head2 GetCapacityReservation

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetCapacityReservation>

Returns: a L<Paws::Athena::GetCapacityReservationOutput> instance

Returns information about the capacity reservation with the specified
name.


=head2 GetDatabase

=over

=item CatalogName => Str

=item DatabaseName => Str

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::GetDatabase>

Returns: a L<Paws::Athena::GetDatabaseOutput> instance

Returns a database object for the specified database and data catalog.


=head2 GetDataCatalog

=over

=item Name => Str

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::GetDataCatalog>

Returns: a L<Paws::Athena::GetDataCatalogOutput> instance

Returns the specified data catalog.


=head2 GetNamedQuery

=over

=item NamedQueryId => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetNamedQuery>

Returns: a L<Paws::Athena::GetNamedQueryOutput> instance

Returns information about a single query. Requires that you have access
to the workgroup in which the query was saved.


=head2 GetNotebookMetadata

=over

=item NotebookId => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetNotebookMetadata>

Returns: a L<Paws::Athena::GetNotebookMetadataOutput> instance

Retrieves notebook metadata for the specified notebook ID.


=head2 GetPreparedStatement

=over

=item StatementName => Str

=item WorkGroup => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetPreparedStatement>

Returns: a L<Paws::Athena::GetPreparedStatementOutput> instance

Retrieves the prepared statement with the specified name from the
specified workgroup.


=head2 GetQueryExecution

=over

=item QueryExecutionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetQueryExecution>

Returns: a L<Paws::Athena::GetQueryExecutionOutput> instance

Returns information about a single execution of a query if you have
access to the workgroup in which the query ran. Each time a query
executes, information about the query execution is saved with a unique
ID.


=head2 GetQueryResults

=over

=item QueryExecutionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::GetQueryResults>

Returns: a L<Paws::Athena::GetQueryResultsOutput> instance

Streams the results of a single query execution specified by
C<QueryExecutionId> from the Athena query results location in Amazon
S3. For more information, see Working with query results, recent
queries, and output files
(https://docs.aws.amazon.com/athena/latest/ug/querying.html) in the
I<Amazon Athena User Guide>. This request does not execute the query
but returns results. Use StartQueryExecution to run a query.

To stream query results successfully, the IAM principal with permission
to call C<GetQueryResults> also must have permissions to the Amazon S3
C<GetObject> action for the Athena query results location.

IAM principals with permission to the Amazon S3 C<GetObject> action for
the query results location are able to retrieve query results from
Amazon S3 even if permission to the C<GetQueryResults> action is
denied. To restrict user or role access, ensure that Amazon S3
permissions to the Athena query location are denied.


=head2 GetQueryRuntimeStatistics

=over

=item QueryExecutionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetQueryRuntimeStatistics>

Returns: a L<Paws::Athena::GetQueryRuntimeStatisticsOutput> instance

Returns query execution runtime statistics related to a single
execution of a query if you have access to the workgroup in which the
query ran. Statistics from the C<Timeline> section of the response
object are available as soon as QueryExecutionStatus$State is in a
SUCCEEDED or FAILED state. The remaining non-timeline statistics in the
response (like stage-level input and output row count and data size)
are updated asynchronously and may not be available immediately after a
query completes. The non-timeline statistics are also not included when
a query has row-level filters defined in Lake Formation.


=head2 GetSession

=over

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetSession>

Returns: a L<Paws::Athena::GetSessionResponse> instance

Gets the full details of a previously created session, including the
session status and configuration.


=head2 GetSessionStatus

=over

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetSessionStatus>

Returns: a L<Paws::Athena::GetSessionStatusResponse> instance

Gets the current status of a session.


=head2 GetTableMetadata

=over

=item CatalogName => Str

=item DatabaseName => Str

=item TableName => Str

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::GetTableMetadata>

Returns: a L<Paws::Athena::GetTableMetadataOutput> instance

Returns table metadata for the specified catalog, database, and table.


=head2 GetWorkGroup

=over

=item WorkGroup => Str


=back

Each argument is described in detail in: L<Paws::Athena::GetWorkGroup>

Returns: a L<Paws::Athena::GetWorkGroupOutput> instance

Returns information about the workgroup with the specified name.


=head2 ImportNotebook

=over

=item Name => Str

=item Type => Str

=item WorkGroup => Str

=item [ClientRequestToken => Str]

=item [NotebookS3LocationUri => Str]

=item [Payload => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ImportNotebook>

Returns: a L<Paws::Athena::ImportNotebookOutput> instance

Imports a single C<ipynb> file to a Spark enabled workgroup. To import
the notebook, the request must specify a value for either C<Payload> or
C<NoteBookS3LocationUri>. If neither is specified or both are
specified, an C<InvalidRequestException> occurs. The maximum file size
that can be imported is 10 megabytes. If an C<ipynb> file with the same
name already exists in the workgroup, throws an error.


=head2 ListApplicationDPUSizes

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListApplicationDPUSizes>

Returns: a L<Paws::Athena::ListApplicationDPUSizesOutput> instance

Returns the supported DPU sizes for the supported application runtimes
(for example, C<Athena notebook version 1>).


=head2 ListCalculationExecutions

=over

=item SessionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StateFilter => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListCalculationExecutions>

Returns: a L<Paws::Athena::ListCalculationExecutionsResponse> instance

Lists the calculations that have been submitted to a session in
descending order. Newer calculations are listed first; older
calculations are listed later.


=head2 ListCapacityReservations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListCapacityReservations>

Returns: a L<Paws::Athena::ListCapacityReservationsOutput> instance

Lists the capacity reservations for the current account.


=head2 ListDatabases

=over

=item CatalogName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListDatabases>

Returns: a L<Paws::Athena::ListDatabasesOutput> instance

Lists the databases in the specified data catalog.


=head2 ListDataCatalogs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListDataCatalogs>

Returns: a L<Paws::Athena::ListDataCatalogsOutput> instance

Lists the data catalogs in the current Amazon Web Services account.

In the Athena console, data catalogs are listed as "data sources" on
the B<Data sources> page under the B<Data source name> column.


=head2 ListEngineVersions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListEngineVersions>

Returns: a L<Paws::Athena::ListEngineVersionsOutput> instance

Returns a list of engine versions that are available to choose from,
including the Auto option.


=head2 ListExecutors

=over

=item SessionId => Str

=item [ExecutorStateFilter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListExecutors>

Returns: a L<Paws::Athena::ListExecutorsResponse> instance

Lists, in descending order, the executors that joined a session. Newer
executors are listed first; older executors are listed later. The
result can be optionally filtered by state.


=head2 ListNamedQueries

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListNamedQueries>

Returns: a L<Paws::Athena::ListNamedQueriesOutput> instance

Provides a list of available query IDs only for queries saved in the
specified workgroup. Requires that you have access to the specified
workgroup. If a workgroup is not specified, lists the saved queries for
the primary workgroup.


=head2 ListNotebookMetadata

=over

=item WorkGroup => Str

=item [Filters => L<Paws::Athena::FilterDefinition>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListNotebookMetadata>

Returns: a L<Paws::Athena::ListNotebookMetadataOutput> instance

Displays the notebook files for the specified workgroup in paginated
format.


=head2 ListNotebookSessions

=over

=item NotebookId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListNotebookSessions>

Returns: a L<Paws::Athena::ListNotebookSessionsResponse> instance

Lists, in descending order, the sessions that have been created in a
notebook that are in an active state like C<CREATING>, C<CREATED>,
C<IDLE> or C<BUSY>. Newer sessions are listed first; older sessions are
listed later.


=head2 ListPreparedStatements

=over

=item WorkGroup => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListPreparedStatements>

Returns: a L<Paws::Athena::ListPreparedStatementsOutput> instance

Lists the prepared statements in the specified workgroup.


=head2 ListQueryExecutions

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListQueryExecutions>

Returns: a L<Paws::Athena::ListQueryExecutionsOutput> instance

Provides a list of available query execution IDs for the queries in the
specified workgroup. Athena keeps a query history for 45 days. If a
workgroup is not specified, returns a list of query execution IDs for
the primary workgroup. Requires you to have access to the workgroup in
which the queries ran.


=head2 ListSessions

=over

=item WorkGroup => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StateFilter => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListSessions>

Returns: a L<Paws::Athena::ListSessionsResponse> instance

Lists the sessions in a workgroup that are in an active state like
C<CREATING>, C<CREATED>, C<IDLE>, or C<BUSY>. Newer sessions are listed
first; older sessions are listed later.


=head2 ListTableMetadata

=over

=item CatalogName => Str

=item DatabaseName => Str

=item [Expression => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListTableMetadata>

Returns: a L<Paws::Athena::ListTableMetadataOutput> instance

Lists the metadata for the tables in the specified data catalog
database.


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListTagsForResource>

Returns: a L<Paws::Athena::ListTagsForResourceOutput> instance

Lists the tags associated with an Athena resource.


=head2 ListWorkGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::ListWorkGroups>

Returns: a L<Paws::Athena::ListWorkGroupsOutput> instance

Lists available workgroups for the account.


=head2 PutCapacityAssignmentConfiguration

=over

=item CapacityAssignments => ArrayRef[L<Paws::Athena::CapacityAssignment>]

=item CapacityReservationName => Str


=back

Each argument is described in detail in: L<Paws::Athena::PutCapacityAssignmentConfiguration>

Returns: a L<Paws::Athena::PutCapacityAssignmentConfigurationOutput> instance

Puts a new capacity assignment configuration for a specified capacity
reservation. If a capacity assignment configuration already exists for
the capacity reservation, replaces the existing capacity assignment
configuration.


=head2 StartCalculationExecution

=over

=item SessionId => Str

=item [CalculationConfiguration => L<Paws::Athena::CalculationConfiguration>]

=item [ClientRequestToken => Str]

=item [CodeBlock => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Athena::StartCalculationExecution>

Returns: a L<Paws::Athena::StartCalculationExecutionResponse> instance

Submits calculations for execution within a session. You can supply the
code to run as an inline code block within the request.

The request syntax requires the
StartCalculationExecutionRequest$CodeBlock parameter or the
CalculationConfiguration$CodeBlock parameter, but not both. Because
CalculationConfiguration$CodeBlock is deprecated, use the
StartCalculationExecutionRequest$CodeBlock parameter instead.


=head2 StartQueryExecution

=over

=item QueryString => Str

=item [ClientRequestToken => Str]

=item [ExecutionParameters => ArrayRef[Str|Undef]]

=item [QueryExecutionContext => L<Paws::Athena::QueryExecutionContext>]

=item [ResultConfiguration => L<Paws::Athena::ResultConfiguration>]

=item [ResultReuseConfiguration => L<Paws::Athena::ResultReuseConfiguration>]

=item [WorkGroup => Str]


=back

Each argument is described in detail in: L<Paws::Athena::StartQueryExecution>

Returns: a L<Paws::Athena::StartQueryExecutionOutput> instance

Runs the SQL query statements contained in the C<Query>. Requires you
to have access to the workgroup in which the query ran. Running queries
against an external catalog requires GetDataCatalog permission to the
catalog. For code samples using the Amazon Web Services SDK for Java,
see Examples and Code Samples
(http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the
I<Amazon Athena User Guide>.


=head2 StartSession

=over

=item EngineConfiguration => L<Paws::Athena::EngineConfiguration>

=item WorkGroup => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [NotebookVersion => Str]

=item [SessionIdleTimeoutInMinutes => Int]


=back

Each argument is described in detail in: L<Paws::Athena::StartSession>

Returns: a L<Paws::Athena::StartSessionResponse> instance

Creates a session for running calculations within a workgroup. The
session is ready when it reaches an C<IDLE> state.


=head2 StopCalculationExecution

=over

=item CalculationExecutionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::StopCalculationExecution>

Returns: a L<Paws::Athena::StopCalculationExecutionResponse> instance

Requests the cancellation of a calculation. A
C<StopCalculationExecution> call on a calculation that is already in a
terminal state (for example, C<STOPPED>, C<FAILED>, or C<COMPLETED>)
succeeds but has no effect.

Cancelling a calculation is done on a best effort basis. If a
calculation cannot be cancelled, you can be charged for its completion.
If you are concerned about being charged for a calculation that cannot
be cancelled, consider terminating the session in which the calculation
is running.


=head2 StopQueryExecution

=over

=item QueryExecutionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::StopQueryExecution>

Returns: a L<Paws::Athena::StopQueryExecutionOutput> instance

Stops a query execution. Requires you to have access to the workgroup
in which the query ran.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::Athena::Tag>]


=back

Each argument is described in detail in: L<Paws::Athena::TagResource>

Returns: a L<Paws::Athena::TagResourceOutput> instance

Adds one or more tags to an Athena resource. A tag is a label that you
assign to a resource. Each tag consists of a key and an optional value,
both of which you define. For example, you can use tags to categorize
Athena workgroups, data catalogs, or capacity reservations by purpose,
owner, or environment. Use a consistent set of tag keys to make it
easier to search and filter the resources in your account. For best
practices, see Tagging Best Practices
(https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html).
Tag keys can be from 1 to 128 UTF-8 Unicode characters, and tag values
can be from 0 to 256 UTF-8 Unicode characters. Tags can use letters and
numbers representable in UTF-8, and the following characters: + - = . _
: / @. Tag keys and values are case-sensitive. Tag keys must be unique
per resource. If you specify more than one tag, separate them by
commas.


=head2 TerminateSession

=over

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::Athena::TerminateSession>

Returns: a L<Paws::Athena::TerminateSessionResponse> instance

Terminates an active session. A C<TerminateSession> call on a session
that is already inactive (for example, in a C<FAILED>, C<TERMINATED> or
C<TERMINATING> state) succeeds but has no effect. Calculations running
in the session when C<TerminateSession> is called are forcefully
stopped, but may display as C<FAILED> instead of C<STOPPED>.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Athena::UntagResource>

Returns: a L<Paws::Athena::UntagResourceOutput> instance

Removes one or more tags from an Athena resource.


=head2 UpdateCapacityReservation

=over

=item Name => Str

=item TargetDpus => Int


=back

Each argument is described in detail in: L<Paws::Athena::UpdateCapacityReservation>

Returns: a L<Paws::Athena::UpdateCapacityReservationOutput> instance

Updates the number of requested data processing units for the capacity
reservation with the specified name.


=head2 UpdateDataCatalog

=over

=item Name => Str

=item Type => Str

=item [Description => Str]

=item [Parameters => L<Paws::Athena::ParametersMap>]


=back

Each argument is described in detail in: L<Paws::Athena::UpdateDataCatalog>

Returns: a L<Paws::Athena::UpdateDataCatalogOutput> instance

Updates the data catalog that has the specified name.


=head2 UpdateNamedQuery

=over

=item Name => Str

=item NamedQueryId => Str

=item QueryString => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Athena::UpdateNamedQuery>

Returns: a L<Paws::Athena::UpdateNamedQueryOutput> instance

Updates a NamedQuery object. The database or workgroup cannot be
updated.


=head2 UpdateNotebook

=over

=item NotebookId => Str

=item Payload => Str

=item Type => Str

=item [ClientRequestToken => Str]

=item [SessionId => Str]


=back

Each argument is described in detail in: L<Paws::Athena::UpdateNotebook>

Returns: a L<Paws::Athena::UpdateNotebookOutput> instance

Updates the contents of a Spark notebook.


=head2 UpdateNotebookMetadata

=over

=item Name => Str

=item NotebookId => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Athena::UpdateNotebookMetadata>

Returns: a L<Paws::Athena::UpdateNotebookMetadataOutput> instance

Updates the metadata for a notebook.


=head2 UpdatePreparedStatement

=over

=item QueryStatement => Str

=item StatementName => Str

=item WorkGroup => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Athena::UpdatePreparedStatement>

Returns: a L<Paws::Athena::UpdatePreparedStatementOutput> instance

Updates a prepared statement.


=head2 UpdateWorkGroup

=over

=item WorkGroup => Str

=item [ConfigurationUpdates => L<Paws::Athena::WorkGroupConfigurationUpdates>]

=item [Description => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::Athena::UpdateWorkGroup>

Returns: a L<Paws::Athena::UpdateWorkGroupOutput> instance

Updates the workgroup with the specified name. The workgroup's name
cannot be changed. Only C<ConfigurationUpdates> can be specified.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllQueryResults(sub { },QueryExecutionId => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllQueryResults(QueryExecutionId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResultSet.Rows, passing the object as the first parameter, and the string 'ResultSet.Rows' as the second parameter 

If not, it will return a a L<Paws::Athena::GetQueryResultsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatabases(sub { },CatalogName => Str, [MaxResults => Int, NextToken => Str, WorkGroup => Str])

=head2 ListAllDatabases(CatalogName => Str, [MaxResults => Int, NextToken => Str, WorkGroup => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatabaseList, passing the object as the first parameter, and the string 'DatabaseList' as the second parameter 

If not, it will return a a L<Paws::Athena::ListDatabasesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataCatalogs(sub { },[MaxResults => Int, NextToken => Str, WorkGroup => Str])

=head2 ListAllDataCatalogs([MaxResults => Int, NextToken => Str, WorkGroup => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DataCatalogsSummary, passing the object as the first parameter, and the string 'DataCatalogsSummary' as the second parameter 

If not, it will return a a L<Paws::Athena::ListDataCatalogsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNamedQueries(sub { },[MaxResults => Int, NextToken => Str, WorkGroup => Str])

=head2 ListAllNamedQueries([MaxResults => Int, NextToken => Str, WorkGroup => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NamedQueryIds, passing the object as the first parameter, and the string 'NamedQueryIds' as the second parameter 

If not, it will return a a L<Paws::Athena::ListNamedQueriesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueryExecutions(sub { },[MaxResults => Int, NextToken => Str, WorkGroup => Str])

=head2 ListAllQueryExecutions([MaxResults => Int, NextToken => Str, WorkGroup => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - QueryExecutionIds, passing the object as the first parameter, and the string 'QueryExecutionIds' as the second parameter 

If not, it will return a a L<Paws::Athena::ListQueryExecutionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTableMetadata(sub { },CatalogName => Str, DatabaseName => Str, [Expression => Str, MaxResults => Int, NextToken => Str, WorkGroup => Str])

=head2 ListAllTableMetadata(CatalogName => Str, DatabaseName => Str, [Expression => Str, MaxResults => Int, NextToken => Str, WorkGroup => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableMetadataList, passing the object as the first parameter, and the string 'TableMetadataList' as the second parameter 

If not, it will return a a L<Paws::Athena::ListTableMetadataOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceARN => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceARN => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::Athena::ListTagsForResourceOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

