
package Paws::DocDB::SwitchoverGlobalCluster;
  use Moose;
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has TargetDbClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SwitchoverGlobalCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::SwitchoverGlobalClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SwitchoverGlobalClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::SwitchoverGlobalCluster - Arguments for method SwitchoverGlobalCluster on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SwitchoverGlobalCluster on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method SwitchoverGlobalCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SwitchoverGlobalCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $SwitchoverGlobalClusterResult = $rds->SwitchoverGlobalCluster(
      GlobalClusterIdentifier   => 'MyGlobalClusterIdentifier',
      TargetDbClusterIdentifier => 'MyDBClusterIdentifier',

    );

    # Results:
    my $GlobalCluster = $SwitchoverGlobalClusterResult->GlobalCluster;

    # Returns a L<Paws::DocDB::SwitchoverGlobalClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/SwitchoverGlobalCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalClusterIdentifier => Str

The identifier of the Amazon DocumentDB global database cluster to
switch over. The identifier is the unique key assigned by the user when
the cluster is created. In other words, it's the name of the global
cluster. This parameter isnE<rsquo>t case-sensitive.

Constraints:

=over

=item *

Must match the identifier of an existing global cluster (Amazon
DocumentDB global database).

=item *

Minimum length of 1. Maximum length of 255.

=back

Pattern: C<[A-Za-z][0-9A-Za-z-:._]*>



=head2 B<REQUIRED> TargetDbClusterIdentifier => Str

The identifier of the secondary Amazon DocumentDB cluster to promote to
the new primary for the global database cluster. Use the Amazon
Resource Name (ARN) for the identifier so that Amazon DocumentDB can
locate the cluster in its Amazon Web Services region.

Constraints:

=over

=item *

Must match the identifier of an existing secondary cluster.

=item *

Minimum length of 1. Maximum length of 255.

=back

Pattern: C<[A-Za-z][0-9A-Za-z-:._]*>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SwitchoverGlobalCluster in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

