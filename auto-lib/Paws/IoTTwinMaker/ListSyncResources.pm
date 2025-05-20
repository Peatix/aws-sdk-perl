
package Paws::IoTTwinMaker::ListSyncResources;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::SyncResourceFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SyncSource => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'syncSource', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSyncResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/sync-jobs/{syncSource}/resources-list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::ListSyncResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListSyncResources - Arguments for method ListSyncResources on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSyncResources on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method ListSyncResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSyncResources.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $ListSyncResourcesResponse = $iottwinmaker->ListSyncResources(
      SyncSource  => 'MySyncSource',
      WorkspaceId => 'MyId',
      Filters     => [
        {
          ExternalId   => 'MyId',     # min: 1, max: 128
          ResourceId   => 'MyId',     # min: 1, max: 128
          ResourceType => 'ENTITY',   # values: ENTITY, COMPONENT_TYPE; OPTIONAL
          State        => 'INITIALIZING'
          , # values: INITIALIZING, PROCESSING, DELETED, IN_SYNC, ERROR; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListSyncResourcesResponse->NextToken;
    my $SyncResources = $ListSyncResourcesResponse->SyncResources;

    # Returns a L<Paws::IoTTwinMaker::ListSyncResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/ListSyncResources>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::IoTTwinMaker::SyncResourceFilter>]

A list of objects that filter the request.

The following filter combinations are supported:

=over

=item *

Filter with state

=item *

Filter with ResourceType and ResourceId

=item *

Filter with ResourceType and ExternalId

=back




=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 50.

Valid Range: Minimum value of 0. Maximum value of 200.



=head2 NextToken => Str

The string that specifies the next page of results.



=head2 B<REQUIRED> SyncSource => Str

The sync source.

Currently the only supported syncSource is C<SITEWISE >.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the sync job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSyncResources in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

