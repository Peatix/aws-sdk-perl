
package Paws::DocDBElastic::StopCluster;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster/{clusterArn}/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDBElastic::StopClusterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::StopCluster - Arguments for method StopCluster on L<Paws::DocDBElastic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopCluster on the
L<Amazon DocumentDB Elastic Clusters|Paws::DocDBElastic> service. Use the attributes of this class
as arguments to method StopCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopCluster.

=head1 SYNOPSIS

    my $docdb-elastic = Paws->service('DocDBElastic');
    my $StopClusterOutput = $docdb -elastic->StopCluster(
      ClusterArn => 'MyString',

    );

    # Results:
    my $Cluster = $StopClusterOutput->Cluster;

    # Returns a L<Paws::DocDBElastic::StopClusterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/docdb-elastic/StopCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The ARN identifier of the elastic cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopCluster in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

