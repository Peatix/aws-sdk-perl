
package Paws::Prometheus::CreateRuleGroupsNamespace;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Data => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'data', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Prometheus::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRuleGroupsNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/rulegroupsnamespaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::CreateRuleGroupsNamespaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::CreateRuleGroupsNamespace - Arguments for method CreateRuleGroupsNamespace on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRuleGroupsNamespace on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method CreateRuleGroupsNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRuleGroupsNamespace.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $CreateRuleGroupsNamespaceResponse = $aps->CreateRuleGroupsNamespace(
      Data        => 'BlobRuleGroupsNamespaceData',
      Name        => 'MyRuleGroupsNamespaceName',
      WorkspaceId => 'MyWorkspaceId',
      ClientToken => 'MyIdempotencyToken',            # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn    = $CreateRuleGroupsNamespaceResponse->Arn;
    my $Name   = $CreateRuleGroupsNamespaceResponse->Name;
    my $Status = $CreateRuleGroupsNamespaceResponse->Status;
    my $Tags   = $CreateRuleGroupsNamespaceResponse->Tags;

    # Returns a L<Paws::Prometheus::CreateRuleGroupsNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/CreateRuleGroupsNamespace>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique identifier that you can provide to ensure the idempotency of
the request. Case-sensitive.



=head2 B<REQUIRED> Data => Str

The rules file to use in the new namespace.

Contains the base64-encoded version of the YAML rules file.

For details about the rule groups namespace structure, see
RuleGroupsNamespaceData
(https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html).



=head2 B<REQUIRED> Name => Str

The name for the new rule groups namespace.



=head2 Tags => L<Paws::Prometheus::TagMap>

The list of tag keys and values to associate with the rule groups
namespace.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace to add the rule groups namespace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRuleGroupsNamespace in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

