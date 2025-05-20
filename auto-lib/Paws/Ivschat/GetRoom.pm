
package Paws::Ivschat::GetRoom;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRoom');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetRoom');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Ivschat::GetRoomResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::GetRoom - Arguments for method GetRoom on L<Paws::Ivschat>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRoom on the
L<Amazon Interactive Video Service Chat|Paws::Ivschat> service. Use the attributes of this class
as arguments to method GetRoom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRoom.

=head1 SYNOPSIS

    my $ivschat = Paws->service('Ivschat');
    my $GetRoomResponse = $ivschat->GetRoom(
      Identifier => 'MyRoomIdentifier',

    );

    # Results:
    my $Arn        = $GetRoomResponse->Arn;
    my $CreateTime = $GetRoomResponse->CreateTime;
    my $Id         = $GetRoomResponse->Id;
    my $LoggingConfigurationIdentifiers =
      $GetRoomResponse->LoggingConfigurationIdentifiers;
    my $MaximumMessageLength = $GetRoomResponse->MaximumMessageLength;
    my $MaximumMessageRatePerSecond =
      $GetRoomResponse->MaximumMessageRatePerSecond;
    my $MessageReviewHandler = $GetRoomResponse->MessageReviewHandler;
    my $Name                 = $GetRoomResponse->Name;
    my $Tags                 = $GetRoomResponse->Tags;
    my $UpdateTime           = $GetRoomResponse->UpdateTime;

    # Returns a L<Paws::Ivschat::GetRoomResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivschat/GetRoom>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

Identifier of the room for which the configuration is to be retrieved.
Currently this must be an ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRoom in L<Paws::Ivschat>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

