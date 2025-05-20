
package Paws::RedshiftServerless::GetSnapshot;
  use Moose;
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' );
  has SnapshotArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snapshotArn' );
  has SnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snapshotName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::GetSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetSnapshot - Arguments for method GetSnapshot on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSnapshot on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method GetSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSnapshot.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $GetSnapshotResponse = $redshift -serverless->GetSnapshot(
      OwnerAccount => 'MyString',    # OPTIONAL
      SnapshotArn  => 'MyString',    # OPTIONAL
      SnapshotName => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Snapshot = $GetSnapshotResponse->Snapshot;

    # Returns a L<Paws::RedshiftServerless::GetSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/GetSnapshot>

=head1 ATTRIBUTES


=head2 OwnerAccount => Str

The owner Amazon Web Services account of a snapshot shared with another
user.



=head2 SnapshotArn => Str

The Amazon Resource Name (ARN) of the snapshot to return.



=head2 SnapshotName => Str

The name of the snapshot to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSnapshot in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

