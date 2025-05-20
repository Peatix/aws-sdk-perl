
package Paws::Finspace::CreateKxDataview;
  use Moose;
  has AutoUpdate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoUpdate');
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneId');
  has AzMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'azMode', required => 1);
  has ChangesetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changesetId');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'databaseName', required => 1);
  has DataviewName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataviewName', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has ReadWrite => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'readWrite');
  has SegmentConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxDataviewSegmentConfiguration]', traits => ['NameInRequest'], request_name => 'segmentConfigurations');
  has Tags => (is => 'ro', isa => 'Paws::Finspace::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKxDataview');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/databases/{databaseName}/dataviews');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::CreateKxDataviewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateKxDataview - Arguments for method CreateKxDataview on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKxDataview on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method CreateKxDataview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKxDataview.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $CreateKxDataviewResponse = $finspace->CreateKxDataview(
      AzMode                => 'SINGLE',
      ClientToken           => 'MyClientTokenString',
      DatabaseName          => 'MyDatabaseName',
      DataviewName          => 'MyKxDataviewName',
      EnvironmentId         => 'MyEnvironmentId',
      AutoUpdate            => 1,                         # OPTIONAL
      AvailabilityZoneId    => 'MyAvailabilityZoneId',    # OPTIONAL
      ChangesetId           => 'MyChangesetId',           # OPTIONAL
      Description           => 'MyDescription',           # OPTIONAL
      ReadWrite             => 1,                         # OPTIONAL
      SegmentConfigurations => [
        {
          DbPaths => [
            'MyDbPath', ...    # min: 1, max: 1025
          ],    # min: 1, max: 30
          VolumeName => 'MyKxVolumeName',    # min: 3, max: 63
          OnDemand   => 1,
        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AutoUpdate         = $CreateKxDataviewResponse->AutoUpdate;
    my $AvailabilityZoneId = $CreateKxDataviewResponse->AvailabilityZoneId;
    my $AzMode             = $CreateKxDataviewResponse->AzMode;
    my $ChangesetId        = $CreateKxDataviewResponse->ChangesetId;
    my $CreatedTimestamp   = $CreateKxDataviewResponse->CreatedTimestamp;
    my $DatabaseName       = $CreateKxDataviewResponse->DatabaseName;
    my $DataviewName       = $CreateKxDataviewResponse->DataviewName;
    my $Description        = $CreateKxDataviewResponse->Description;
    my $EnvironmentId      = $CreateKxDataviewResponse->EnvironmentId;
    my $LastModifiedTimestamp =
      $CreateKxDataviewResponse->LastModifiedTimestamp;
    my $ReadWrite = $CreateKxDataviewResponse->ReadWrite;
    my $SegmentConfigurations =
      $CreateKxDataviewResponse->SegmentConfigurations;
    my $Status = $CreateKxDataviewResponse->Status;

    # Returns a L<Paws::Finspace::CreateKxDataviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/CreateKxDataview>

=head1 ATTRIBUTES


=head2 AutoUpdate => Bool

The option to specify whether you want to apply all the future
additions and corrections automatically to the dataview, when you
ingest new changesets. The default value is false.



=head2 AvailabilityZoneId => Str

The identifier of the availability zones.



=head2 B<REQUIRED> AzMode => Str

The number of availability zones you want to assign per volume.
Currently, FinSpace only supports C<SINGLE> for volumes. This places
dataview in a single AZ.

Valid values are: C<"SINGLE">, C<"MULTI">

=head2 ChangesetId => Str

A unique identifier of the changeset that you want to use to ingest
data.



=head2 B<REQUIRED> ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> DatabaseName => Str

The name of the database where you want to create a dataview.



=head2 B<REQUIRED> DataviewName => Str

A unique identifier for the dataview.



=head2 Description => Str

A description of the dataview.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment, where you want to create
the dataview.



=head2 ReadWrite => Bool

The option to specify whether you want to make the dataview writable to
perform database maintenance. The following are some considerations
related to writable dataviews.

=over

=item *

You cannot create partial writable dataviews. When you create writeable
dataviews you must provide the entire database path.

=item *

You cannot perform updates on a writeable dataview. Hence,
C<autoUpdate> must be set as B<False> if C<readWrite> is B<True> for a
dataview.

=item *

You must also use a unique volume for creating a writeable dataview.
So, if you choose a volume that is already in use by another dataview,
the dataview creation fails.

=item *

Once you create a dataview as writeable, you cannot change it to
read-only. So, you cannot update the C<readWrite> parameter later.

=back




=head2 SegmentConfigurations => ArrayRef[L<Paws::Finspace::KxDataviewSegmentConfiguration>]

The configuration that contains the database path of the data that you
want to place on each selected volume. Each segment must have a unique
database path for each volume. If you do not explicitly specify any
database path for a volume, they are accessible from the cluster
through the default S3/object store segment.



=head2 Tags => L<Paws::Finspace::TagMap>

A list of key-value pairs to label the dataview. You can add up to 50
tags to a dataview.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKxDataview in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

