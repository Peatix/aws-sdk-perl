
package Paws::Prometheus::PutRuleGroupsNamespace;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Data => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'data', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRuleGroupsNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/rulegroupsnamespaces/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::PutRuleGroupsNamespaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::PutRuleGroupsNamespace - Arguments for method PutRuleGroupsNamespace on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRuleGroupsNamespace on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method PutRuleGroupsNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRuleGroupsNamespace.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $PutRuleGroupsNamespaceResponse = $aps->PutRuleGroupsNamespace(
      Data        => 'BlobRuleGroupsNamespaceData',
      Name        => 'MyRuleGroupsNamespaceName',
      WorkspaceId => 'MyWorkspaceId',
      ClientToken => 'MyIdempotencyToken',            # OPTIONAL
    );

    # Results:
    my $Arn    = $PutRuleGroupsNamespaceResponse->Arn;
    my $Name   = $PutRuleGroupsNamespaceResponse->Name;
    my $Status = $PutRuleGroupsNamespaceResponse->Status;
    my $Tags   = $PutRuleGroupsNamespaceResponse->Tags;

    # Returns a L<Paws::Prometheus::PutRuleGroupsNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/PutRuleGroupsNamespace>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique identifier that you can provide to ensure the idempotency of
the request. Case-sensitive.



=head2 B<REQUIRED> Data => Str

The new rules file to use in the namespace. A base64-encoded version of
the YAML rule groups file.

For details about the rule groups namespace structure, see
RuleGroupsNamespaceData
(https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html).



=head2 B<REQUIRED> Name => Str

The name of the rule groups namespace that you are updating.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace where you are updating the rule groups
namespace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRuleGroupsNamespace in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

