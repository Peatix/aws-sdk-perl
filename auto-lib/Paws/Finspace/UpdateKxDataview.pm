
package Paws::Finspace::UpdateKxDataview;
  use Moose;
  has ChangesetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changesetId');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'databaseName', required => 1);
  has DataviewName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataviewName', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has SegmentConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxDataviewSegmentConfiguration]', traits => ['NameInRequest'], request_name => 'segmentConfigurations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKxDataview');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::UpdateKxDataviewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateKxDataview - Arguments for method UpdateKxDataview on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKxDataview on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method UpdateKxDataview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKxDataview.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $UpdateKxDataviewResponse = $finspace->UpdateKxDataview(
      ClientToken           => 'MyClientTokenString',
      DatabaseName          => 'MyDatabaseName',
      DataviewName          => 'MyKxDataviewName',
      EnvironmentId         => 'MyEnvironmentId',
      ChangesetId           => 'MyChangesetId',         # OPTIONAL
      Description           => 'MyDescription',         # OPTIONAL
      SegmentConfigurations => [
        {
          DbPaths => [
            'MyDbPath', ...    # min: 1, max: 1025
          ],    # min: 1, max: 30
          VolumeName => 'MyKxVolumeName',    # min: 3, max: 63
          OnDemand   => 1,                   # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ActiveVersions     = $UpdateKxDataviewResponse->ActiveVersions;
    my $AutoUpdate         = $UpdateKxDataviewResponse->AutoUpdate;
    my $AvailabilityZoneId = $UpdateKxDataviewResponse->AvailabilityZoneId;
    my $AzMode             = $UpdateKxDataviewResponse->AzMode;
    my $ChangesetId        = $UpdateKxDataviewResponse->ChangesetId;
    my $CreatedTimestamp   = $UpdateKxDataviewResponse->CreatedTimestamp;
    my $DatabaseName       = $UpdateKxDataviewResponse->DatabaseName;
    my $DataviewName       = $UpdateKxDataviewResponse->DataviewName;
    my $Description        = $UpdateKxDataviewResponse->Description;
    my $EnvironmentId      = $UpdateKxDataviewResponse->EnvironmentId;
    my $LastModifiedTimestamp =
      $UpdateKxDataviewResponse->LastModifiedTimestamp;
    my $ReadWrite = $UpdateKxDataviewResponse->ReadWrite;
    my $SegmentConfigurations =
      $UpdateKxDataviewResponse->SegmentConfigurations;
    my $Status = $UpdateKxDataviewResponse->Status;

    # Returns a L<Paws::Finspace::UpdateKxDataviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/UpdateKxDataview>

=head1 ATTRIBUTES


=head2 ChangesetId => Str

A unique identifier for the changeset.



=head2 B<REQUIRED> ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> DatabaseName => Str

The name of the database.



=head2 B<REQUIRED> DataviewName => Str

The name of the dataview that you want to update.



=head2 Description => Str

The description for a dataview.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment, where you want to update
the dataview.



=head2 SegmentConfigurations => ArrayRef[L<Paws::Finspace::KxDataviewSegmentConfiguration>]

The configuration that contains the database path of the data that you
want to place on each selected volume. Each segment must have a unique
database path for each volume. If you do not explicitly specify any
database path for a volume, they are accessible from the cluster
through the default S3/object store segment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKxDataview in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

