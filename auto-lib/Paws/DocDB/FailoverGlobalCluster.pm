
package Paws::DocDB::FailoverGlobalCluster;
  use Moose;
  has AllowDataLoss => (is => 'ro', isa => 'Bool');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Switchover => (is => 'ro', isa => 'Bool');
  has TargetDbClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'FailoverGlobalCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::FailoverGlobalClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'FailoverGlobalClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::FailoverGlobalCluster - Arguments for method FailoverGlobalCluster on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method FailoverGlobalCluster on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method FailoverGlobalCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to FailoverGlobalCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $FailoverGlobalClusterResult = $rds->FailoverGlobalCluster(
      GlobalClusterIdentifier   => 'MyGlobalClusterIdentifier',
      TargetDbClusterIdentifier => 'MyDBClusterIdentifier',
      AllowDataLoss             => 1,                             # OPTIONAL
      Switchover                => 1,                             # OPTIONAL
    );

    # Results:
    my $GlobalCluster = $FailoverGlobalClusterResult->GlobalCluster;

    # Returns a L<Paws::DocDB::FailoverGlobalClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/FailoverGlobalCluster>

=head1 ATTRIBUTES


=head2 AllowDataLoss => Bool

Specifies whether to allow data loss for this global cluster operation.
Allowing data loss triggers a global failover operation.

If you don't specify C<AllowDataLoss>, the global cluster operation
defaults to a switchover.

Constraints:

=over

=item *

Can't be specified together with the C<Switchover> parameter.

=back




=head2 B<REQUIRED> GlobalClusterIdentifier => Str

The identifier of the Amazon DocumentDB global cluster to apply this
operation. The identifier is the unique key assigned by the user when
the cluster is created. In other words, it's the name of the global
cluster.

Constraints:

=over

=item *

Must match the identifier of an existing global cluster.

=item *

Minimum length of 1. Maximum length of 255.

=back

Pattern: C<[A-Za-z][0-9A-Za-z-:._]*>



=head2 Switchover => Bool

Specifies whether to switch over this global database cluster.

Constraints:

=over

=item *

Can't be specified together with the C<AllowDataLoss> parameter.

=back




=head2 B<REQUIRED> TargetDbClusterIdentifier => Str

The identifier of the secondary Amazon DocumentDB cluster that you want
to promote to the primary for the global cluster. Use the Amazon
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

This class forms part of L<Paws>, documenting arguments for method FailoverGlobalCluster in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

