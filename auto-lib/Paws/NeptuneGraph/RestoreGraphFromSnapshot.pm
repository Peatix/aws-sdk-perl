
package Paws::NeptuneGraph::RestoreGraphFromSnapshot;
  use Moose;
  has DeletionProtection => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deletionProtection');
  has GraphName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'graphName', required => 1);
  has ProvisionedMemory => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'provisionedMemory');
  has PublicConnectivity => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publicConnectivity');
  has ReplicaCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'replicaCount');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'snapshotIdentifier', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NeptuneGraph::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreGraphFromSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/snapshots/{snapshotIdentifier}/restore');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::RestoreGraphFromSnapshotOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::RestoreGraphFromSnapshot - Arguments for method RestoreGraphFromSnapshot on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreGraphFromSnapshot on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method RestoreGraphFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreGraphFromSnapshot.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $RestoreGraphFromSnapshotOutput =
      $neptune -graph->RestoreGraphFromSnapshot(
      GraphName          => 'MyGraphName',
      SnapshotIdentifier => 'MySnapshotIdentifier',
      DeletionProtection => 1,                        # OPTIONAL
      ProvisionedMemory  => 1,                        # OPTIONAL
      PublicConnectivity => 1,                        # OPTIONAL
      ReplicaCount       => 1,                        # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn         = $RestoreGraphFromSnapshotOutput->Arn;
    my $BuildNumber = $RestoreGraphFromSnapshotOutput->BuildNumber;
    my $CreateTime  = $RestoreGraphFromSnapshotOutput->CreateTime;
    my $DeletionProtection =
      $RestoreGraphFromSnapshotOutput->DeletionProtection;
    my $Endpoint          = $RestoreGraphFromSnapshotOutput->Endpoint;
    my $Id                = $RestoreGraphFromSnapshotOutput->Id;
    my $KmsKeyIdentifier  = $RestoreGraphFromSnapshotOutput->KmsKeyIdentifier;
    my $Name              = $RestoreGraphFromSnapshotOutput->Name;
    my $ProvisionedMemory = $RestoreGraphFromSnapshotOutput->ProvisionedMemory;
    my $PublicConnectivity =
      $RestoreGraphFromSnapshotOutput->PublicConnectivity;
    my $ReplicaCount     = $RestoreGraphFromSnapshotOutput->ReplicaCount;
    my $SourceSnapshotId = $RestoreGraphFromSnapshotOutput->SourceSnapshotId;
    my $Status           = $RestoreGraphFromSnapshotOutput->Status;
    my $StatusReason     = $RestoreGraphFromSnapshotOutput->StatusReason;
    my $VectorSearchConfiguration =
      $RestoreGraphFromSnapshotOutput->VectorSearchConfiguration;

    # Returns a L<Paws::NeptuneGraph::RestoreGraphFromSnapshotOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/RestoreGraphFromSnapshot>

=head1 ATTRIBUTES


=head2 DeletionProtection => Bool

A value that indicates whether the graph has deletion protection
enabled. The graph can't be deleted when deletion protection is
enabled.



=head2 B<REQUIRED> GraphName => Str

A name for the new Neptune Analytics graph to be created from the
snapshot.

The name must contain from 1 to 63 letters, numbers, or hyphens, and
its first character must be a letter. It cannot end with a hyphen or
contain two consecutive hyphens. Only lowercase letters are allowed.



=head2 ProvisionedMemory => Int

The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use
for the graph.

Min = 16



=head2 PublicConnectivity => Bool

Specifies whether or not the graph can be reachable over the internet.
All access to graphs is IAM authenticated. (C<true> to enable, or
C<false> to disable).



=head2 ReplicaCount => Int

The number of replicas in other AZs. Min =0, Max = 2, Default =1

Additional charges equivalent to the m-NCUs selected for the graph
apply for each replica.



=head2 B<REQUIRED> SnapshotIdentifier => Str

The ID of the snapshot in question.



=head2 Tags => L<Paws::NeptuneGraph::TagMap>

Adds metadata tags to the snapshot. These tags can also be used with
cost allocation reporting, or used in a Condition statement in an IAM
policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreGraphFromSnapshot in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

