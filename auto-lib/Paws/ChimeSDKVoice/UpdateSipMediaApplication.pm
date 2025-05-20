
package Paws::ChimeSDKVoice::UpdateSipMediaApplication;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::SipMediaApplicationEndpoint]');
  has Name => (is => 'ro', isa => 'Str');
  has SipMediaApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sipMediaApplicationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSipMediaApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sip-media-applications/{sipMediaApplicationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::UpdateSipMediaApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::UpdateSipMediaApplication - Arguments for method UpdateSipMediaApplication on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSipMediaApplication on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method UpdateSipMediaApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSipMediaApplication.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $UpdateSipMediaApplicationResponse =
      $voice -chime->UpdateSipMediaApplication(
      SipMediaApplicationId => 'MyNonEmptyString',
      Endpoints             => [
        {
          LambdaArn => 'MyFunctionArn',    # max: 10000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Name => 'MySipMediaApplicationName',    # OPTIONAL
      );

    # Results:
    my $SipMediaApplication =
      $UpdateSipMediaApplicationResponse->SipMediaApplication;

   # Returns a L<Paws::ChimeSDKVoice::UpdateSipMediaApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/UpdateSipMediaApplication>

=head1 ATTRIBUTES


=head2 Endpoints => ArrayRef[L<Paws::ChimeSDKVoice::SipMediaApplicationEndpoint>]

The new set of endpoints for the specified SIP media application.



=head2 Name => Str

The new name for the specified SIP media application.



=head2 B<REQUIRED> SipMediaApplicationId => Str

The SIP media application ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSipMediaApplication in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

