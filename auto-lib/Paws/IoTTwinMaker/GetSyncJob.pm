
package Paws::IoTTwinMaker::GetSyncJob;
  use Moose;
  has SyncSource => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'syncSource', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'workspace');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSyncJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sync-jobs/{syncSource}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::GetSyncJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetSyncJob - Arguments for method GetSyncJob on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSyncJob on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method GetSyncJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSyncJob.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $GetSyncJobResponse = $iottwinmaker->GetSyncJob(
      SyncSource  => 'MySyncSource',
      WorkspaceId => 'MyId',           # OPTIONAL
    );

    # Results:
    my $Arn              = $GetSyncJobResponse->Arn;
    my $CreationDateTime = $GetSyncJobResponse->CreationDateTime;
    my $Status           = $GetSyncJobResponse->Status;
    my $SyncRole         = $GetSyncJobResponse->SyncRole;
    my $SyncSource       = $GetSyncJobResponse->SyncSource;
    my $UpdateDateTime   = $GetSyncJobResponse->UpdateDateTime;
    my $WorkspaceId      = $GetSyncJobResponse->WorkspaceId;

    # Returns a L<Paws::IoTTwinMaker::GetSyncJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/GetSyncJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SyncSource => Str

The sync source.

Currently the only supported syncSource is C<SITEWISE >.



=head2 WorkspaceId => Str

The workspace ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSyncJob in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

