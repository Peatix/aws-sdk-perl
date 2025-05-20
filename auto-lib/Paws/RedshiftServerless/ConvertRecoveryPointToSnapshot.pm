
package Paws::RedshiftServerless::ConvertRecoveryPointToSnapshot;
  use Moose;
  has RecoveryPointId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryPointId' , required => 1);
  has RetentionPeriod => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'retentionPeriod' );
  has SnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snapshotName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConvertRecoveryPointToSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::ConvertRecoveryPointToSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ConvertRecoveryPointToSnapshot - Arguments for method ConvertRecoveryPointToSnapshot on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConvertRecoveryPointToSnapshot on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method ConvertRecoveryPointToSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConvertRecoveryPointToSnapshot.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $ConvertRecoveryPointToSnapshotResponse =
      $redshift -serverless->ConvertRecoveryPointToSnapshot(
      RecoveryPointId => 'MyString',
      SnapshotName    => 'MyString',
      RetentionPeriod => 1,            # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Snapshot = $ConvertRecoveryPointToSnapshotResponse->Snapshot;

# Returns a L<Paws::RedshiftServerless::ConvertRecoveryPointToSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/ConvertRecoveryPointToSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecoveryPointId => Str

The unique identifier of the recovery point.



=head2 RetentionPeriod => Int

How long to retain the snapshot.



=head2 B<REQUIRED> SnapshotName => Str

The name of the snapshot.



=head2 Tags => ArrayRef[L<Paws::RedshiftServerless::Tag>]

An array of Tag objects
(https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html)
to associate with the created snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConvertRecoveryPointToSnapshot in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

