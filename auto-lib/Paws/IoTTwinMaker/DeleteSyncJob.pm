
package Paws::IoTTwinMaker::DeleteSyncJob;
  use Moose;
  has SyncSource => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'syncSource', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSyncJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/sync-jobs/{syncSource}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::DeleteSyncJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::DeleteSyncJob - Arguments for method DeleteSyncJob on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSyncJob on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method DeleteSyncJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSyncJob.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $DeleteSyncJobResponse = $iottwinmaker->DeleteSyncJob(
      SyncSource  => 'MySyncSource',
      WorkspaceId => 'MyId',

    );

    # Results:
    my $State = $DeleteSyncJobResponse->State;

    # Returns a L<Paws::IoTTwinMaker::DeleteSyncJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/DeleteSyncJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SyncSource => Str

The sync source.

Currently the only supported syncSource is C<SITEWISE >.



=head2 B<REQUIRED> WorkspaceId => Str

The workspace ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSyncJob in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

