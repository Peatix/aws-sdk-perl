
package Paws::NeptuneGraph::DeleteGraphSnapshot;
  use Moose;
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'snapshotIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGraphSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/snapshots/{snapshotIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::DeleteGraphSnapshotOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::DeleteGraphSnapshot - Arguments for method DeleteGraphSnapshot on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGraphSnapshot on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method DeleteGraphSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGraphSnapshot.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $DeleteGraphSnapshotOutput = $neptune -graph->DeleteGraphSnapshot(
      SnapshotIdentifier => 'MySnapshotIdentifier',

    );

    # Results:
    my $Arn                = $DeleteGraphSnapshotOutput->Arn;
    my $Id                 = $DeleteGraphSnapshotOutput->Id;
    my $KmsKeyIdentifier   = $DeleteGraphSnapshotOutput->KmsKeyIdentifier;
    my $Name               = $DeleteGraphSnapshotOutput->Name;
    my $SnapshotCreateTime = $DeleteGraphSnapshotOutput->SnapshotCreateTime;
    my $SourceGraphId      = $DeleteGraphSnapshotOutput->SourceGraphId;
    my $Status             = $DeleteGraphSnapshotOutput->Status;

    # Returns a L<Paws::NeptuneGraph::DeleteGraphSnapshotOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/DeleteGraphSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotIdentifier => Str

ID of the graph snapshot to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGraphSnapshot in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

