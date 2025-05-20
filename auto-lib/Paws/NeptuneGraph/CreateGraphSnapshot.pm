
package Paws::NeptuneGraph::CreateGraphSnapshot;
  use Moose;
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'graphIdentifier', required => 1);
  has SnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snapshotName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NeptuneGraph::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGraphSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/snapshots');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::CreateGraphSnapshotOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::CreateGraphSnapshot - Arguments for method CreateGraphSnapshot on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGraphSnapshot on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method CreateGraphSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGraphSnapshot.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $CreateGraphSnapshotOutput = $neptune -graph->CreateGraphSnapshot(
      GraphIdentifier => 'MyGraphIdentifier',
      SnapshotName    => 'MySnapshotName',
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn                = $CreateGraphSnapshotOutput->Arn;
    my $Id                 = $CreateGraphSnapshotOutput->Id;
    my $KmsKeyIdentifier   = $CreateGraphSnapshotOutput->KmsKeyIdentifier;
    my $Name               = $CreateGraphSnapshotOutput->Name;
    my $SnapshotCreateTime = $CreateGraphSnapshotOutput->SnapshotCreateTime;
    my $SourceGraphId      = $CreateGraphSnapshotOutput->SourceGraphId;
    my $Status             = $CreateGraphSnapshotOutput->Status;

    # Returns a L<Paws::NeptuneGraph::CreateGraphSnapshotOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/CreateGraphSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.



=head2 B<REQUIRED> SnapshotName => Str

The snapshot name. For example: C<my-snapshot-1>.

The name must contain from 1 to 63 letters, numbers, or hyphens, and
its first character must be a letter. It cannot end with a hyphen or
contain two consecutive hyphens. Only lowercase letters are allowed.



=head2 Tags => L<Paws::NeptuneGraph::TagMap>

Adds metadata tags to the new graph. These tags can also be used with
cost allocation reporting, or used in a Condition statement in an IAM
policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGraphSnapshot in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

