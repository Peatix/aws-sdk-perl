
package Paws::RedShift::AuthorizeSnapshotAccess;
  use Moose;
  has AccountWithRestoreAccess => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotArn => (is => 'ro', isa => 'Str');
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSnapshotAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::AuthorizeSnapshotAccessResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeSnapshotAccessResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::AuthorizeSnapshotAccess - Arguments for method AuthorizeSnapshotAccess on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AuthorizeSnapshotAccess on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method AuthorizeSnapshotAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AuthorizeSnapshotAccess.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $AuthorizeSnapshotAccessResult = $redshift->AuthorizeSnapshotAccess(
      AccountWithRestoreAccess  => 'MyString',
      SnapshotArn               => 'MyString',    # OPTIONAL
      SnapshotClusterIdentifier => 'MyString',    # OPTIONAL
      SnapshotIdentifier        => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Snapshot = $AuthorizeSnapshotAccessResult->Snapshot;

    # Returns a L<Paws::RedShift::AuthorizeSnapshotAccessResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/AuthorizeSnapshotAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountWithRestoreAccess => Str

The identifier of the Amazon Web Services account authorized to restore
the specified snapshot.

To share a snapshot with Amazon Web Services Support, specify
amazon-redshift-support.



=head2 SnapshotArn => Str

The Amazon Resource Name (ARN) of the snapshot to authorize access to.



=head2 SnapshotClusterIdentifier => Str

The identifier of the cluster the snapshot was created from.

=over

=item *

I<If the snapshot to access doesn't exist and the associated IAM policy
doesn't allow access to all (*) snapshots> - This parameter is
required. Otherwise, permissions aren't available to check if the
snapshot exists.

=item *

I<If the snapshot to access exists> - This parameter isn't required.
Redshift can retrieve the cluster identifier and use it to validate
snapshot authorization.

=back




=head2 SnapshotIdentifier => Str

The identifier of the snapshot the account is authorized to restore.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AuthorizeSnapshotAccess in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

