
package Paws::ChimeSDKVoice::CreateSipMediaApplication;
  use Moose;
  has AwsRegion => (is => 'ro', isa => 'Str', required => 1);
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::SipMediaApplicationEndpoint]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSipMediaApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sip-media-applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::CreateSipMediaApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreateSipMediaApplication - Arguments for method CreateSipMediaApplication on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSipMediaApplication on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method CreateSipMediaApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSipMediaApplication.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $CreateSipMediaApplicationResponse =
      $voice -chime->CreateSipMediaApplication(
      AwsRegion => 'MyString',
      Endpoints => [
        {
          LambdaArn => 'MyFunctionArn',    # max: 10000; OPTIONAL
        },
        ...
      ],
      Name => 'MySipMediaApplicationName',
      Tags => [
        {
          Key   => 'MyTagKey',             # min: 1, max: 128
          Value => 'MyTagValue',           # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $SipMediaApplication =
      $CreateSipMediaApplicationResponse->SipMediaApplication;

   # Returns a L<Paws::ChimeSDKVoice::CreateSipMediaApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/CreateSipMediaApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsRegion => Str

The AWS Region assigned to the SIP media application.



=head2 B<REQUIRED> Endpoints => ArrayRef[L<Paws::ChimeSDKVoice::SipMediaApplicationEndpoint>]

List of endpoints (Lambda ARNs) specified for the SIP media
application.



=head2 B<REQUIRED> Name => Str

The SIP media application's name.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKVoice::Tag>]

The tags assigned to the SIP media application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSipMediaApplication in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

