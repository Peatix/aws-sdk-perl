
package Paws::IoTTwinMaker::ListComponents;
  use Moose;
  has ComponentPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentPath');
  has EntityId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComponents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/entities/{entityId}/components-list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::ListComponentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListComponents - Arguments for method ListComponents on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComponents on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method ListComponents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComponents.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $ListComponentsResponse = $iottwinmaker->ListComponents(
      EntityId      => 'MyEntityId',
      WorkspaceId   => 'MyId',
      ComponentPath => 'MyComponentPath',    # OPTIONAL
      MaxResults    => 1,                    # OPTIONAL
      NextToken     => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $ComponentSummaries = $ListComponentsResponse->ComponentSummaries;
    my $NextToken          = $ListComponentsResponse->NextToken;

    # Returns a L<Paws::IoTTwinMaker::ListComponentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/ListComponents>

=head1 ATTRIBUTES


=head2 ComponentPath => Str

This string specifies the path to the composite component, starting
from the top-level component.



=head2 B<REQUIRED> EntityId => Str

The ID for the entity whose metadata (component/properties) is returned
by the operation.



=head2 MaxResults => Int

The maximum number of results returned at one time. The default is 25.



=head2 NextToken => Str

The string that specifies the next page of results.



=head2 B<REQUIRED> WorkspaceId => Str

The workspace ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComponents in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

