
package Paws::RDS::SwitchoverGlobalCluster;
  use Moose;
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has TargetDbClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SwitchoverGlobalCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::SwitchoverGlobalClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SwitchoverGlobalClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::SwitchoverGlobalCluster - Arguments for method SwitchoverGlobalCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SwitchoverGlobalCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method SwitchoverGlobalCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SwitchoverGlobalCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $SwitchoverGlobalClusterResult = $rds->SwitchoverGlobalCluster(
      GlobalClusterIdentifier   => 'MyGlobalClusterIdentifier',
      TargetDbClusterIdentifier => 'MyDBClusterIdentifier',

    );

    # Results:
    my $GlobalCluster = $SwitchoverGlobalClusterResult->GlobalCluster;

    # Returns a L<Paws::RDS::SwitchoverGlobalClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/SwitchoverGlobalCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalClusterIdentifier => Str

The identifier of the global database cluster to switch over. This
parameter isn't case-sensitive.

Constraints:

=over

=item *

Must match the identifier of an existing global database cluster
(Aurora global database).

=back




=head2 B<REQUIRED> TargetDbClusterIdentifier => Str

The identifier of the secondary Aurora DB cluster to promote to the new
primary for the global database cluster. Use the Amazon Resource Name
(ARN) for the identifier so that Aurora can locate the cluster in its
Amazon Web Services Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SwitchoverGlobalCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

