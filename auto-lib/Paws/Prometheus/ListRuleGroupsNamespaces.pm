
package Paws::Prometheus::ListRuleGroupsNamespaces;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRuleGroupsNamespaces');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/rulegroupsnamespaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::ListRuleGroupsNamespacesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::ListRuleGroupsNamespaces - Arguments for method ListRuleGroupsNamespaces on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRuleGroupsNamespaces on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method ListRuleGroupsNamespaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRuleGroupsNamespaces.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $ListRuleGroupsNamespacesResponse = $aps->ListRuleGroupsNamespaces(
      WorkspaceId => 'MyWorkspaceId',
      MaxResults  => 1,                              # OPTIONAL
      Name        => 'MyRuleGroupsNamespaceName',    # OPTIONAL
      NextToken   => 'MyPaginationToken',            # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRuleGroupsNamespacesResponse->NextToken;
    my $RuleGroupsNamespaces =
      $ListRuleGroupsNamespacesResponse->RuleGroupsNamespaces;

    # Returns a L<Paws::Prometheus::ListRuleGroupsNamespacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/ListRuleGroupsNamespaces>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return. The default is 100.



=head2 Name => Str

Use this parameter to filter the rule groups namespaces that are
returned. Only the namespaces with names that begin with the value that
you specify are returned.



=head2 NextToken => Str

The token for the next set of items to return. You receive this token
from a previous call, and use it to get the next page of results. The
other parameters must be the same as the initial call.

For example, if your initial request has C<maxResults> of 10, and there
are 12 rule groups namespaces to return, then your initial request will
return 10 and a C<nextToken>. Using the next token in a subsequent call
will return the remaining 2 namespaces.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace containing the rule groups namespaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRuleGroupsNamespaces in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

