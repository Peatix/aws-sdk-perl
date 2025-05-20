
package Paws::NeptuneGraph::CreateGraph;
  use Moose;
  has DeletionProtection => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deletionProtection');
  has GraphName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'graphName', required => 1);
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyIdentifier');
  has ProvisionedMemory => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'provisionedMemory', required => 1);
  has PublicConnectivity => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publicConnectivity');
  has ReplicaCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'replicaCount');
  has Tags => (is => 'ro', isa => 'Paws::NeptuneGraph::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VectorSearchConfiguration => (is => 'ro', isa => 'Paws::NeptuneGraph::VectorSearchConfiguration', traits => ['NameInRequest'], request_name => 'vectorSearchConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGraph');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graphs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::CreateGraphOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::CreateGraph - Arguments for method CreateGraph on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGraph on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method CreateGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGraph.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $CreateGraphOutput = $neptune -graph->CreateGraph(
      GraphName          => 'MyGraphName',
      ProvisionedMemory  => 1,
      DeletionProtection => 1,                # OPTIONAL
      KmsKeyIdentifier   => 'MyKmsKeyArn',    # OPTIONAL
      PublicConnectivity => 1,                # OPTIONAL
      ReplicaCount       => 1,                # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VectorSearchConfiguration => {
        Dimension => 1,    # min: 1, max: 65536

      },    # OPTIONAL
    );

    # Results:
    my $Arn                = $CreateGraphOutput->Arn;
    my $BuildNumber        = $CreateGraphOutput->BuildNumber;
    my $CreateTime         = $CreateGraphOutput->CreateTime;
    my $DeletionProtection = $CreateGraphOutput->DeletionProtection;
    my $Endpoint           = $CreateGraphOutput->Endpoint;
    my $Id                 = $CreateGraphOutput->Id;
    my $KmsKeyIdentifier   = $CreateGraphOutput->KmsKeyIdentifier;
    my $Name               = $CreateGraphOutput->Name;
    my $ProvisionedMemory  = $CreateGraphOutput->ProvisionedMemory;
    my $PublicConnectivity = $CreateGraphOutput->PublicConnectivity;
    my $ReplicaCount       = $CreateGraphOutput->ReplicaCount;
    my $SourceSnapshotId   = $CreateGraphOutput->SourceSnapshotId;
    my $Status             = $CreateGraphOutput->Status;
    my $StatusReason       = $CreateGraphOutput->StatusReason;
    my $VectorSearchConfiguration =
      $CreateGraphOutput->VectorSearchConfiguration;

    # Returns a L<Paws::NeptuneGraph::CreateGraphOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/CreateGraph>

=head1 ATTRIBUTES


=head2 DeletionProtection => Bool

Indicates whether or not to enable deletion protection on the graph.
The graph canE<rsquo>t be deleted when deletion protection is enabled.
(C<true> or C<false>).



=head2 B<REQUIRED> GraphName => Str

A name for the new Neptune Analytics graph to be created.

The name must contain from 1 to 63 letters, numbers, or hyphens, and
its first character must be a letter. It cannot end with a hyphen or
contain two consecutive hyphens. Only lowercase letters are allowed.



=head2 KmsKeyIdentifier => Str

Specifies a KMS key to use to encrypt data in the new graph.



=head2 B<REQUIRED> ProvisionedMemory => Int

The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use
for the graph. Min = 16



=head2 PublicConnectivity => Bool

Specifies whether or not the graph can be reachable over the internet.
All access to graphs is IAM authenticated. (C<true> to enable, or
C<false> to disable.



=head2 ReplicaCount => Int

The number of replicas in other AZs. Min =0, Max = 2, Default = 1.

Additional charges equivalent to the m-NCUs selected for the graph
apply for each replica.



=head2 Tags => L<Paws::NeptuneGraph::TagMap>

Adds metadata tags to the new graph. These tags can also be used with
cost allocation reporting, or used in a Condition statement in an IAM
policy.



=head2 VectorSearchConfiguration => L<Paws::NeptuneGraph::VectorSearchConfiguration>

Specifies the number of dimensions for vector embeddings that will be
loaded into the graph. The value is specified as C<dimension=>value.
Max = 65,535




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGraph in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

