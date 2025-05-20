
package Paws::IoTTwinMaker::ListScenes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListScenes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/scenes-list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::ListScenesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListScenes - Arguments for method ListScenes on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListScenes on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method ListScenes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListScenes.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $ListScenesResponse = $iottwinmaker->ListScenes(
      WorkspaceId => 'MyId',
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListScenesResponse->NextToken;
    my $SceneSummaries = $ListScenesResponse->SceneSummaries;

    # Returns a L<Paws::IoTTwinMaker::ListScenesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/ListScenes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the maximum number of results to display.



=head2 NextToken => Str

The string that specifies the next page of results.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the scenes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListScenes in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

