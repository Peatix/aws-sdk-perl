
package Paws::NeptuneGraph::GetGraph;
  use Moose;
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'graphIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGraph');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graphs/{graphIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::GetGraphOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::GetGraph - Arguments for method GetGraph on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGraph on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method GetGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGraph.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $GetGraphOutput = $neptune -graph->GetGraph(
      GraphIdentifier => 'MyGraphIdentifier',

    );

    # Results:
    my $Arn                       = $GetGraphOutput->Arn;
    my $BuildNumber               = $GetGraphOutput->BuildNumber;
    my $CreateTime                = $GetGraphOutput->CreateTime;
    my $DeletionProtection        = $GetGraphOutput->DeletionProtection;
    my $Endpoint                  = $GetGraphOutput->Endpoint;
    my $Id                        = $GetGraphOutput->Id;
    my $KmsKeyIdentifier          = $GetGraphOutput->KmsKeyIdentifier;
    my $Name                      = $GetGraphOutput->Name;
    my $ProvisionedMemory         = $GetGraphOutput->ProvisionedMemory;
    my $PublicConnectivity        = $GetGraphOutput->PublicConnectivity;
    my $ReplicaCount              = $GetGraphOutput->ReplicaCount;
    my $SourceSnapshotId          = $GetGraphOutput->SourceSnapshotId;
    my $Status                    = $GetGraphOutput->Status;
    my $StatusReason              = $GetGraphOutput->StatusReason;
    my $VectorSearchConfiguration = $GetGraphOutput->VectorSearchConfiguration;

    # Returns a L<Paws::NeptuneGraph::GetGraphOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/GetGraph>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGraph in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

