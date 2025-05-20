
package Paws::NeptuneGraph::UpdateGraph;
  use Moose;
  has DeletionProtection => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deletionProtection');
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'graphIdentifier', required => 1);
  has ProvisionedMemory => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'provisionedMemory');
  has PublicConnectivity => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publicConnectivity');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGraph');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graphs/{graphIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::UpdateGraphOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::UpdateGraph - Arguments for method UpdateGraph on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGraph on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method UpdateGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGraph.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $UpdateGraphOutput = $neptune -graph->UpdateGraph(
      GraphIdentifier    => 'MyGraphIdentifier',
      DeletionProtection => 1,                     # OPTIONAL
      ProvisionedMemory  => 1,                     # OPTIONAL
      PublicConnectivity => 1,                     # OPTIONAL
    );

    # Results:
    my $Arn                = $UpdateGraphOutput->Arn;
    my $BuildNumber        = $UpdateGraphOutput->BuildNumber;
    my $CreateTime         = $UpdateGraphOutput->CreateTime;
    my $DeletionProtection = $UpdateGraphOutput->DeletionProtection;
    my $Endpoint           = $UpdateGraphOutput->Endpoint;
    my $Id                 = $UpdateGraphOutput->Id;
    my $KmsKeyIdentifier   = $UpdateGraphOutput->KmsKeyIdentifier;
    my $Name               = $UpdateGraphOutput->Name;
    my $ProvisionedMemory  = $UpdateGraphOutput->ProvisionedMemory;
    my $PublicConnectivity = $UpdateGraphOutput->PublicConnectivity;
    my $ReplicaCount       = $UpdateGraphOutput->ReplicaCount;
    my $SourceSnapshotId   = $UpdateGraphOutput->SourceSnapshotId;
    my $Status             = $UpdateGraphOutput->Status;
    my $StatusReason       = $UpdateGraphOutput->StatusReason;
    my $VectorSearchConfiguration =
      $UpdateGraphOutput->VectorSearchConfiguration;

    # Returns a L<Paws::NeptuneGraph::UpdateGraphOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/UpdateGraph>

=head1 ATTRIBUTES


=head2 DeletionProtection => Bool

A value that indicates whether the graph has deletion protection
enabled. The graph can't be deleted when deletion protection is
enabled.



=head2 B<REQUIRED> GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.



=head2 ProvisionedMemory => Int

The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use
for the graph.

Min = 16



=head2 PublicConnectivity => Bool

Specifies whether or not the graph can be reachable over the internet.
All access to graphs is IAM authenticated. (C<true> to enable, or
C<false> to disable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGraph in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

