
package Paws::NeptuneGraph::DeleteGraph;
  use Moose;
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'graphIdentifier', required => 1);
  has SkipSnapshot => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'skipSnapshot', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGraph');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graphs/{graphIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::DeleteGraphOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::DeleteGraph - Arguments for method DeleteGraph on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGraph on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method DeleteGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGraph.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $DeleteGraphOutput = $neptune -graph->DeleteGraph(
      GraphIdentifier => 'MyGraphIdentifier',
      SkipSnapshot    => 1,

    );

    # Results:
    my $Arn                = $DeleteGraphOutput->Arn;
    my $BuildNumber        = $DeleteGraphOutput->BuildNumber;
    my $CreateTime         = $DeleteGraphOutput->CreateTime;
    my $DeletionProtection = $DeleteGraphOutput->DeletionProtection;
    my $Endpoint           = $DeleteGraphOutput->Endpoint;
    my $Id                 = $DeleteGraphOutput->Id;
    my $KmsKeyIdentifier   = $DeleteGraphOutput->KmsKeyIdentifier;
    my $Name               = $DeleteGraphOutput->Name;
    my $ProvisionedMemory  = $DeleteGraphOutput->ProvisionedMemory;
    my $PublicConnectivity = $DeleteGraphOutput->PublicConnectivity;
    my $ReplicaCount       = $DeleteGraphOutput->ReplicaCount;
    my $SourceSnapshotId   = $DeleteGraphOutput->SourceSnapshotId;
    my $Status             = $DeleteGraphOutput->Status;
    my $StatusReason       = $DeleteGraphOutput->StatusReason;
    my $VectorSearchConfiguration =
      $DeleteGraphOutput->VectorSearchConfiguration;

    # Returns a L<Paws::NeptuneGraph::DeleteGraphOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/DeleteGraph>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.



=head2 B<REQUIRED> SkipSnapshot => Bool

Determines whether a final graph snapshot is created before the graph
is deleted. If C<true> is specified, no graph snapshot is created. If
C<false> is specified, a graph snapshot is created before the graph is
deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGraph in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

