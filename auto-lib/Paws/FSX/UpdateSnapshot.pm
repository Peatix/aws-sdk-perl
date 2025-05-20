
package Paws::FSX::UpdateSnapshot;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::UpdateSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateSnapshot - Arguments for method UpdateSnapshot on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSnapshot on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method UpdateSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSnapshot.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $UpdateSnapshotResponse = $fsx->UpdateSnapshot(
      Name               => 'MySnapshotName',
      SnapshotId         => 'MySnapshotId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $Snapshot = $UpdateSnapshotResponse->Snapshot;

    # Returns a L<Paws::FSX::UpdateSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/UpdateSnapshot>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 B<REQUIRED> Name => Str

The name of the snapshot to update.



=head2 B<REQUIRED> SnapshotId => Str

The ID of the snapshot that you want to update, in the format
C<fsvolsnap-0123456789abcdef0>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSnapshot in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

