
package Paws::DocDBElastic::CreateClusterSnapshot;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterArn', required => 1);
  has SnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snapshotName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::DocDBElastic::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster-snapshot');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDBElastic::CreateClusterSnapshotOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::CreateClusterSnapshot - Arguments for method CreateClusterSnapshot on L<Paws::DocDBElastic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateClusterSnapshot on the
L<Amazon DocumentDB Elastic Clusters|Paws::DocDBElastic> service. Use the attributes of this class
as arguments to method CreateClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateClusterSnapshot.

=head1 SYNOPSIS

    my $docdb-elastic = Paws->service('DocDBElastic');
    my $CreateClusterSnapshotOutput = $docdb -elastic->CreateClusterSnapshot(
      ClusterArn   => 'MyString',
      SnapshotName => 'MyCreateClusterSnapshotInputSnapshotNameString',
      Tags         => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Snapshot = $CreateClusterSnapshotOutput->Snapshot;

    # Returns a L<Paws::DocDBElastic::CreateClusterSnapshotOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/docdb-elastic/CreateClusterSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The ARN identifier of the elastic cluster of which you want to create a
snapshot.



=head2 B<REQUIRED> SnapshotName => Str

The name of the new elastic cluster snapshot.



=head2 Tags => L<Paws::DocDBElastic::TagMap>

The tags to be assigned to the new elastic cluster snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClusterSnapshot in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

