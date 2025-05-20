
package Paws::IoTTwinMaker::CreateSyncJob;
  use Moose;
  has SyncRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'syncRole', required => 1);
  has SyncSource => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'syncSource', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTTwinMaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSyncJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/sync-jobs/{syncSource}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::CreateSyncJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::CreateSyncJob - Arguments for method CreateSyncJob on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSyncJob on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method CreateSyncJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSyncJob.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $CreateSyncJobResponse = $iottwinmaker->CreateSyncJob(
      SyncRole    => 'MyRoleArn',
      SyncSource  => 'MySyncSource',
      WorkspaceId => 'MyId',
      Tags        => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn              = $CreateSyncJobResponse->Arn;
    my $CreationDateTime = $CreateSyncJobResponse->CreationDateTime;
    my $State            = $CreateSyncJobResponse->State;

    # Returns a L<Paws::IoTTwinMaker::CreateSyncJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/CreateSyncJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SyncRole => Str

The SyncJob IAM role. This IAM role is used by the SyncJob to read from
the syncSource, and create, update, or delete the corresponding
resources.



=head2 B<REQUIRED> SyncSource => Str

The sync source.

Currently the only supported syncSoource is C<SITEWISE >.



=head2 Tags => L<Paws::IoTTwinMaker::TagMap>

The SyncJob tags.



=head2 B<REQUIRED> WorkspaceId => Str

The workspace ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSyncJob in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

