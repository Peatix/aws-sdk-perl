package Paws::BCMDataExports;
  use Moose;
  sub service { 'bcm-data-exports' }
  sub signing_name { 'bcm-data-exports' }
  sub version { '2023-11-26' }
  sub target_prefix { 'AWSBillingAndCostManagementDataExports' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::CreateExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::DeleteExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::GetExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::GetExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::GetTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::ListExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::ListExports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::ListTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMDataExports::UpdateExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListExecutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Executions }, @{ $next_result->Executions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Executions') foreach (@{ $result->Executions });
        $result = $self->ListExecutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Executions') foreach (@{ $result->Executions });
    }

    return undef
  }
  sub ListAllExports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListExports(@_, NextToken => $next_result->NextToken);
        push @{ $result->Exports }, @{ $next_result->Exports };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Exports') foreach (@{ $result->Exports });
        $result = $self->ListExports(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Exports') foreach (@{ $result->Exports });
    }

    return undef
  }
  sub ListAllTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tables }, @{ $next_result->Tables };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tables') foreach (@{ $result->Tables });
        $result = $self->ListTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tables') foreach (@{ $result->Tables });
    }

    return undef
  }


  sub operations { qw/CreateExport DeleteExport GetExecution GetExport GetTable ListExecutions ListExports ListTables ListTagsForResource TagResource UntagResource UpdateExport / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports - Perl Interface to AWS AWS Billing and Cost Management Data Exports

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('BCMDataExports');
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

You can use the Data Exports API to create customized exports from
multiple Amazon Web Services cost management and billing datasets, such
as cost and usage data and cost optimization recommendations.

The Data Exports API provides the following endpoint:

=over

=item *

https://bcm-data-exports.us-east-1.api.aws

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateExport

=over

=item Export => L<Paws::BCMDataExports::Export>

=item [ResourceTags => ArrayRef[L<Paws::BCMDataExports::ResourceTag>]]


=back

Each argument is described in detail in: L<Paws::BCMDataExports::CreateExport>

Returns: a L<Paws::BCMDataExports::CreateExportResponse> instance

Creates a data export and specifies the data query, the delivery
preference, and any optional resource tags.

A C<DataQuery> consists of both a C<QueryStatement> and
C<TableConfigurations>.

The C<QueryStatement> is an SQL statement. Data Exports only supports a
limited subset of the SQL syntax. For more information on the SQL
syntax that is supported, see Data query
(https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html).
To view the available tables and columns, see the Data Exports table
dictionary
(https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html).

The C<TableConfigurations> is a collection of specified
C<TableProperties> for the table being queried in the
C<QueryStatement>. TableProperties are additional configurations you
can provide to change the data and schema of a table. Each table can
have different TableProperties. However, tables are not required to
have any TableProperties. Each table property has a default value that
it assumes if not specified. For more information on table
configurations, see Data query
(https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html).
To view the table properties available for each table, see the Data
Exports table dictionary
(https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html)
or use the C<ListTables> API to get a response of all tables and their
available properties.


=head2 DeleteExport

=over

=item ExportArn => Str


=back

Each argument is described in detail in: L<Paws::BCMDataExports::DeleteExport>

Returns: a L<Paws::BCMDataExports::DeleteExportResponse> instance

Deletes an existing data export.


=head2 GetExecution

=over

=item ExecutionId => Str

=item ExportArn => Str


=back

Each argument is described in detail in: L<Paws::BCMDataExports::GetExecution>

Returns: a L<Paws::BCMDataExports::GetExecutionResponse> instance

Exports data based on the source data update.


=head2 GetExport

=over

=item ExportArn => Str


=back

Each argument is described in detail in: L<Paws::BCMDataExports::GetExport>

Returns: a L<Paws::BCMDataExports::GetExportResponse> instance

Views the definition of an existing data export.


=head2 GetTable

=over

=item TableName => Str

=item [TableProperties => L<Paws::BCMDataExports::TableProperties>]


=back

Each argument is described in detail in: L<Paws::BCMDataExports::GetTable>

Returns: a L<Paws::BCMDataExports::GetTableResponse> instance

Returns the metadata for the specified table and table properties. This
includes the list of columns in the table schema, their data types, and
column descriptions.


=head2 ListExecutions

=over

=item ExportArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMDataExports::ListExecutions>

Returns: a L<Paws::BCMDataExports::ListExecutionsResponse> instance

Lists the historical executions for the export.


=head2 ListExports

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMDataExports::ListExports>

Returns: a L<Paws::BCMDataExports::ListExportsResponse> instance

Lists all data export definitions.


=head2 ListTables

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMDataExports::ListTables>

Returns: a L<Paws::BCMDataExports::ListTablesResponse> instance

Lists all available tables in data exports.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMDataExports::ListTagsForResource>

Returns: a L<Paws::BCMDataExports::ListTagsForResourceResponse> instance

List tags associated with an existing data export.


=head2 TagResource

=over

=item ResourceArn => Str

=item ResourceTags => ArrayRef[L<Paws::BCMDataExports::ResourceTag>]


=back

Each argument is described in detail in: L<Paws::BCMDataExports::TagResource>

Returns: a L<Paws::BCMDataExports::TagResourceResponse> instance

Adds tags for an existing data export definition.


=head2 UntagResource

=over

=item ResourceArn => Str

=item ResourceTagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::BCMDataExports::UntagResource>

Returns: a L<Paws::BCMDataExports::UntagResourceResponse> instance

Deletes tags associated with an existing data export definition.


=head2 UpdateExport

=over

=item Export => L<Paws::BCMDataExports::Export>

=item ExportArn => Str


=back

Each argument is described in detail in: L<Paws::BCMDataExports::UpdateExport>

Returns: a L<Paws::BCMDataExports::UpdateExportResponse> instance

Updates an existing data export by overwriting all export parameters.
All export parameters must be provided in the UpdateExport request.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllExecutions(sub { },ExportArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllExecutions(ExportArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Executions, passing the object as the first parameter, and the string 'Executions' as the second parameter 

If not, it will return a a L<Paws::BCMDataExports::ListExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExports(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllExports([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Exports, passing the object as the first parameter, and the string 'Exports' as the second parameter 

If not, it will return a a L<Paws::BCMDataExports::ListExportsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTables(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllTables([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tables, passing the object as the first parameter, and the string 'Tables' as the second parameter 

If not, it will return a a L<Paws::BCMDataExports::ListTablesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

