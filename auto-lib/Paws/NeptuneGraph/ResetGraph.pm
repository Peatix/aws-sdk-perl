
package Paws::NeptuneGraph::ResetGraph;
  use Moose;
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'graphIdentifier', required => 1);
  has SkipSnapshot => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'skipSnapshot', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetGraph');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graphs/{graphIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::ResetGraphOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ResetGraph - Arguments for method ResetGraph on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetGraph on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method ResetGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetGraph.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $ResetGraphOutput = $neptune -graph->ResetGraph(
      GraphIdentifier => 'MyGraphIdentifier',
      SkipSnapshot    => 1,

    );

    # Results:
    my $Arn                = $ResetGraphOutput->Arn;
    my $BuildNumber        = $ResetGraphOutput->BuildNumber;
    my $CreateTime         = $ResetGraphOutput->CreateTime;
    my $DeletionProtection = $ResetGraphOutput->DeletionProtection;
    my $Endpoint           = $ResetGraphOutput->Endpoint;
    my $Id                 = $ResetGraphOutput->Id;
    my $KmsKeyIdentifier   = $ResetGraphOutput->KmsKeyIdentifier;
    my $Name               = $ResetGraphOutput->Name;
    my $ProvisionedMemory  = $ResetGraphOutput->ProvisionedMemory;
    my $PublicConnectivity = $ResetGraphOutput->PublicConnectivity;
    my $ReplicaCount       = $ResetGraphOutput->ReplicaCount;
    my $SourceSnapshotId   = $ResetGraphOutput->SourceSnapshotId;
    my $Status             = $ResetGraphOutput->Status;
    my $StatusReason       = $ResetGraphOutput->StatusReason;
    my $VectorSearchConfiguration =
      $ResetGraphOutput->VectorSearchConfiguration;

    # Returns a L<Paws::NeptuneGraph::ResetGraphOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/ResetGraph>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GraphIdentifier => Str

ID of the graph to reset.



=head2 B<REQUIRED> SkipSnapshot => Bool

Determines whether a final graph snapshot is created before the graph
data is deleted. If set to C<true>, no graph snapshot is created. If
set to C<false>, a graph snapshot is created before the data is
deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetGraph in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

