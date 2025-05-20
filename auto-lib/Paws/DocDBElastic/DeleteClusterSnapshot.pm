
package Paws::DocDBElastic::DeleteClusterSnapshot;
  use Moose;
  has SnapshotArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'snapshotArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster-snapshot/{snapshotArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDBElastic::DeleteClusterSnapshotOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::DeleteClusterSnapshot - Arguments for method DeleteClusterSnapshot on L<Paws::DocDBElastic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteClusterSnapshot on the
L<Amazon DocumentDB Elastic Clusters|Paws::DocDBElastic> service. Use the attributes of this class
as arguments to method DeleteClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteClusterSnapshot.

=head1 SYNOPSIS

    my $docdb-elastic = Paws->service('DocDBElastic');
    my $DeleteClusterSnapshotOutput = $docdb -elastic->DeleteClusterSnapshot(
      SnapshotArn => 'MyString',

    );

    # Results:
    my $Snapshot = $DeleteClusterSnapshotOutput->Snapshot;

    # Returns a L<Paws::DocDBElastic::DeleteClusterSnapshotOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/docdb-elastic/DeleteClusterSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotArn => Str

The ARN identifier of the elastic cluster snapshot that is to be
deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteClusterSnapshot in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

