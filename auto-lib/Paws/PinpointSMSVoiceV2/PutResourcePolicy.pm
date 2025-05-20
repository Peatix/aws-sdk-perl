
package Paws::PinpointSMSVoiceV2::PutResourcePolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::PutResourcePolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $PutResourcePolicyResult = $sms -voice->PutResourcePolicy(
      Policy      => 'MyResourcePolicy',
      ResourceArn => 'MyAmazonResourceName',

    );

    # Results:
    my $CreatedTimestamp = $PutResourcePolicyResult->CreatedTimestamp;
    my $Policy           = $PutResourcePolicyResult->Policy;
    my $ResourceArn      = $PutResourcePolicyResult->ResourceArn;

    # Returns a L<Paws::PinpointSMSVoiceV2::PutResourcePolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The JSON formatted resource-based policy to attach.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and
Voice resource to attach the resource-based policy to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

