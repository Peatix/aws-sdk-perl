
package Paws::Prometheus::DeleteRuleGroupsNamespace;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRuleGroupsNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/rulegroupsnamespaces/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::DeleteRuleGroupsNamespace - Arguments for method DeleteRuleGroupsNamespace on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRuleGroupsNamespace on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method DeleteRuleGroupsNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRuleGroupsNamespace.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    $aps->DeleteRuleGroupsNamespace(
      Name        => 'MyRuleGroupsNamespaceName',
      WorkspaceId => 'MyWorkspaceId',
      ClientToken => 'MyIdempotencyToken',          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/DeleteRuleGroupsNamespace>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique identifier that you can provide to ensure the idempotency of
the request. Case-sensitive.



=head2 B<REQUIRED> Name => Str

The name of the rule groups namespace to delete.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace containing the rule groups namespace and
definition to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRuleGroupsNamespace in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

