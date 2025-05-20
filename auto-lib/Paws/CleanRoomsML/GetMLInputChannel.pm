
package Paws::CleanRoomsML::GetMLInputChannel;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has MlInputChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'mlInputChannelArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMLInputChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/ml-input-channels/{mlInputChannelArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::GetMLInputChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetMLInputChannel - Arguments for method GetMLInputChannel on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMLInputChannel on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method GetMLInputChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMLInputChannel.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $GetMLInputChannelResponse = $cleanrooms -ml->GetMLInputChannel(
      MembershipIdentifier => 'MyUUID',
      MlInputChannelArn    => 'MyMLInputChannelArn',

    );

    # Results:
    my $CollaborationIdentifier =
      $GetMLInputChannelResponse->CollaborationIdentifier;
    my $ConfiguredModelAlgorithmAssociations =
      $GetMLInputChannelResponse->ConfiguredModelAlgorithmAssociations;
    my $CreateTime           = $GetMLInputChannelResponse->CreateTime;
    my $Description          = $GetMLInputChannelResponse->Description;
    my $InputChannel         = $GetMLInputChannelResponse->InputChannel;
    my $KmsKeyArn            = $GetMLInputChannelResponse->KmsKeyArn;
    my $MembershipIdentifier = $GetMLInputChannelResponse->MembershipIdentifier;
    my $MlInputChannelArn    = $GetMLInputChannelResponse->MlInputChannelArn;
    my $Name                 = $GetMLInputChannelResponse->Name;
    my $NumberOfFiles        = $GetMLInputChannelResponse->NumberOfFiles;
    my $NumberOfRecords      = $GetMLInputChannelResponse->NumberOfRecords;
    my $ProtectedQueryIdentifier =
      $GetMLInputChannelResponse->ProtectedQueryIdentifier;
    my $RetentionInDays = $GetMLInputChannelResponse->RetentionInDays;
    my $SizeInGb        = $GetMLInputChannelResponse->SizeInGb;
    my $Status          = $GetMLInputChannelResponse->Status;
    my $StatusDetails   = $GetMLInputChannelResponse->StatusDetails;
    my $Tags            = $GetMLInputChannelResponse->Tags;
    my $UpdateTime      = $GetMLInputChannelResponse->UpdateTime;

    # Returns a L<Paws::CleanRoomsML::GetMLInputChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/GetMLInputChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the membership that contains the ML input channel
that you want to get.



=head2 B<REQUIRED> MlInputChannelArn => Str

The Amazon Resource Name (ARN) of the ML input channel that you want to
get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMLInputChannel in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

