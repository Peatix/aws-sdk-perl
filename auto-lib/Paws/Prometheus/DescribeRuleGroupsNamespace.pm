
package Paws::Prometheus::DescribeRuleGroupsNamespace;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRuleGroupsNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/rulegroupsnamespaces/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::DescribeRuleGroupsNamespaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::DescribeRuleGroupsNamespace - Arguments for method DescribeRuleGroupsNamespace on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRuleGroupsNamespace on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method DescribeRuleGroupsNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRuleGroupsNamespace.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $DescribeRuleGroupsNamespaceResponse = $aps->DescribeRuleGroupsNamespace(
      Name        => 'MyRuleGroupsNamespaceName',
      WorkspaceId => 'MyWorkspaceId',

    );

    # Results:
    my $RuleGroupsNamespace =
      $DescribeRuleGroupsNamespaceResponse->RuleGroupsNamespace;

    # Returns a L<Paws::Prometheus::DescribeRuleGroupsNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/DescribeRuleGroupsNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the rule groups namespace that you want information for.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace containing the rule groups namespace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRuleGroupsNamespace in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

