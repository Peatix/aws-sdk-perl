
package Paws::NeptuneGraph::GetGraphSnapshot;
  use Moose;
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'snapshotIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGraphSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/snapshots/{snapshotIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::GetGraphSnapshotOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::GetGraphSnapshot - Arguments for method GetGraphSnapshot on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGraphSnapshot on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method GetGraphSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGraphSnapshot.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $GetGraphSnapshotOutput = $neptune -graph->GetGraphSnapshot(
      SnapshotIdentifier => 'MySnapshotIdentifier',

    );

    # Results:
    my $Arn                = $GetGraphSnapshotOutput->Arn;
    my $Id                 = $GetGraphSnapshotOutput->Id;
    my $KmsKeyIdentifier   = $GetGraphSnapshotOutput->KmsKeyIdentifier;
    my $Name               = $GetGraphSnapshotOutput->Name;
    my $SnapshotCreateTime = $GetGraphSnapshotOutput->SnapshotCreateTime;
    my $SourceGraphId      = $GetGraphSnapshotOutput->SourceGraphId;
    my $Status             = $GetGraphSnapshotOutput->Status;

    # Returns a L<Paws::NeptuneGraph::GetGraphSnapshotOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/GetGraphSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotIdentifier => Str

The ID of the snapshot to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGraphSnapshot in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

