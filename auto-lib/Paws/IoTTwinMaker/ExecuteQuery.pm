
package Paws::IoTTwinMaker::ExecuteQuery;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has QueryStatement => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryStatement', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/queries/execution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::ExecuteQueryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ExecuteQuery - Arguments for method ExecuteQuery on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteQuery on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method ExecuteQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteQuery.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $ExecuteQueryResponse = $iottwinmaker->ExecuteQuery(
      QueryStatement => 'MyQueryStatement',
      WorkspaceId    => 'MyId',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $ColumnDescriptions = $ExecuteQueryResponse->ColumnDescriptions;
    my $NextToken          = $ExecuteQueryResponse->NextToken;
    my $Rows               = $ExecuteQueryResponse->Rows;

    # Returns a L<Paws::IoTTwinMaker::ExecuteQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/ExecuteQuery>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 50.



=head2 NextToken => Str

The string that specifies the next page of results.



=head2 B<REQUIRED> QueryStatement => Str

The query statement.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteQuery in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

