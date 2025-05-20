
package Paws::CloudWatchLogs::PutQueryDefinition;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has LogGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logGroupNames' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has QueryDefinitionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryDefinitionId' );
  has QueryLanguage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryLanguage' );
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutQueryDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::PutQueryDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutQueryDefinition - Arguments for method PutQueryDefinition on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutQueryDefinition on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutQueryDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutQueryDefinition.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $PutQueryDefinitionResponse = $logs->PutQueryDefinition(
      Name          => 'MyQueryDefinitionName',
      QueryString   => 'MyQueryDefinitionString',
      ClientToken   => 'MyClientToken',             # OPTIONAL
      LogGroupNames => [
        'MyLogGroupName', ...                       # min: 1, max: 512
      ],    # OPTIONAL
      QueryDefinitionId => 'MyQueryId',    # OPTIONAL
      QueryLanguage     => 'CWLI',         # OPTIONAL
    );

    # Results:
    my $QueryDefinitionId = $PutQueryDefinitionResponse->QueryDefinitionId;

    # Returns a L<Paws::CloudWatchLogs::PutQueryDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutQueryDefinition>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Used as an idempotency token, to avoid returning an exception if the
service receives the same request twice because of a network error.



=head2 LogGroupNames => ArrayRef[Str|Undef]

Use this parameter to include specific log groups as part of your query
definition. If your query uses the OpenSearch Service query language,
you specify the log group names inside the C<querystring> instead of
here.

If you are updating an existing query definition for the Logs Insights
QL or OpenSearch Service PPL and you omit this parameter, then the
updated definition will contain no log groups.



=head2 B<REQUIRED> Name => Str

A name for the query definition. If you are saving numerous query
definitions, we recommend that you name them. This way, you can find
the ones you want by using the first part of the name as a filter in
the C<queryDefinitionNamePrefix> parameter of DescribeQueryDefinitions
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html).



=head2 QueryDefinitionId => Str

If you are updating a query definition, use this parameter to specify
the ID of the query definition that you want to update. You can use
DescribeQueryDefinitions
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html)
to retrieve the IDs of your saved query definitions.

If you are creating a query definition, do not specify this parameter.
CloudWatch generates a unique ID for the new query definition and
include it in the response to this operation.



=head2 QueryLanguage => Str

Specify the query language to use for this query. The options are Logs
Insights QL, OpenSearch PPL, and OpenSearch SQL. For more information
about the query languages that CloudWatch Logs supports, see Supported
query languages
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html).

Valid values are: C<"CWLI">, C<"SQL">, C<"PPL">

=head2 B<REQUIRED> QueryString => Str

The query string to use for this definition. For more information, see
CloudWatch Logs Insights Query Syntax
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutQueryDefinition in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

