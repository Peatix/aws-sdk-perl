
package Paws::ChimeSDKVoice::CreateVoiceProfileDomain;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKVoice::ServerSideEncryptionConfiguration', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVoiceProfileDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-profile-domains');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::CreateVoiceProfileDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreateVoiceProfileDomain - Arguments for method CreateVoiceProfileDomain on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVoiceProfileDomain on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method CreateVoiceProfileDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVoiceProfileDomain.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $CreateVoiceProfileDomainResponse =
      $voice -chime->CreateVoiceProfileDomain(
      Name                              => 'MyVoiceProfileDomainName',
      ServerSideEncryptionConfiguration => {
        KmsKeyArn => 'MyArn',    # min: 1, max: 1024

      },
      ClientRequestToken => 'MyClientRequestId',                  # OPTIONAL
      Description        => 'MyVoiceProfileDomainDescription',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $VoiceProfileDomain =
      $CreateVoiceProfileDomainResponse->VoiceProfileDomain;

    # Returns a L<Paws::ChimeSDKVoice::CreateVoiceProfileDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/CreateVoiceProfileDomain>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The unique identifier for the client request. Use a different token for
different domain creation requests.



=head2 Description => Str

A description of the voice profile domain.



=head2 B<REQUIRED> Name => Str

The name of the voice profile domain.



=head2 B<REQUIRED> ServerSideEncryptionConfiguration => L<Paws::ChimeSDKVoice::ServerSideEncryptionConfiguration>

The server-side encryption configuration for the request.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKVoice::Tag>]

The tags assigned to the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVoiceProfileDomain in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

