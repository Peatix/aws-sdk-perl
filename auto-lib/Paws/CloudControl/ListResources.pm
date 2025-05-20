
package Paws::CloudControl::ListResources;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceModel => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str', required => 1);
  has TypeVersionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudControl::ListResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::ListResources - Arguments for method ListResources on L<Paws::CloudControl>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResources on the
L<AWS Cloud Control API|Paws::CloudControl> service. Use the attributes of this class
as arguments to method ListResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResources.

=head1 SYNOPSIS

    my $cloudcontrolapi = Paws->service('CloudControl');
    my $ListResourcesOutput = $cloudcontrolapi->ListResources(
      TypeName      => 'MyTypeName',
      MaxResults    => 1,                       # OPTIONAL
      NextToken     => 'MyHandlerNextToken',    # OPTIONAL
      ResourceModel => 'MyProperties',          # OPTIONAL
      RoleArn       => 'MyRoleArn',             # OPTIONAL
      TypeVersionId => 'MyTypeVersionId',       # OPTIONAL
    );

    # Results:
    my $NextToken            = $ListResourcesOutput->NextToken;
    my $ResourceDescriptions = $ListResourcesOutput->ResourceDescriptions;
    my $TypeName             = $ListResourcesOutput->TypeName;

    # Returns a L<Paws::CloudControl::ListResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudcontrolapi/ListResources>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Reserved.



=head2 NextToken => Str

If the previous paginated request didn't return all of the remaining
results, the response object's C<NextToken> parameter value is set to a
token. To retrieve the next set of results, call this action again and
assign that token to the request object's C<NextToken> parameter. If
there are no remaining results, the previous response object's
C<NextToken> parameter is set to C<null>.



=head2 ResourceModel => Str

The resource model to use to select the resources to return.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role for Cloud Control API to use when performing this resource
operation. The role specified must have the permissions required for
this operation. The necessary permissions for each event handler are
defined in the C< handlers
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers)
> section of the resource type definition schema
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html).

If you do not specify a role, Cloud Control API uses a temporary
session created using your Amazon Web Services user credentials.

For more information, see Specifying credentials
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions)
in the I<Amazon Web Services Cloud Control API User Guide>.



=head2 B<REQUIRED> TypeName => Str

The name of the resource type.



=head2 TypeVersionId => Str

For private resource types, the type version to use in this resource
operation. If you do not specify a resource version, CloudFormation
uses the default version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResources in L<Paws::CloudControl>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

