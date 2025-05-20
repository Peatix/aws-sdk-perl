
package Paws::Transfer::StartRemoteMove;
  use Moose;
  has ConnectorId => (is => 'ro', isa => 'Str', required => 1);
  has SourcePath => (is => 'ro', isa => 'Str', required => 1);
  has TargetPath => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartRemoteMove');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::StartRemoteMoveResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::StartRemoteMove - Arguments for method StartRemoteMove on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartRemoteMove on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method StartRemoteMove.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartRemoteMove.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $StartRemoteMoveResponse = $transfer->StartRemoteMove(
      ConnectorId => 'MyConnectorId',
      SourcePath  => 'MyFilePath',
      TargetPath  => 'MyFilePath',

    );

    # Results:
    my $MoveId = $StartRemoteMoveResponse->MoveId;

    # Returns a L<Paws::Transfer::StartRemoteMoveResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/StartRemoteMove>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorId => Str

The unique identifier for the connector.



=head2 B<REQUIRED> SourcePath => Str

The absolute path of the file or directory to move or rename. You can
only specify one path per call to this operation.



=head2 B<REQUIRED> TargetPath => Str

The absolute path for the target of the move/rename operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartRemoteMove in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

