
package Paws::PinpointSMSVoiceV2::SetMediaMessageSpendLimitOverride;
  use Moose;
  has MonthlyLimit => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetMediaMessageSpendLimitOverride');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::SetMediaMessageSpendLimitOverrideResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SetMediaMessageSpendLimitOverride - Arguments for method SetMediaMessageSpendLimitOverride on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetMediaMessageSpendLimitOverride on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method SetMediaMessageSpendLimitOverride.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetMediaMessageSpendLimitOverride.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $SetMediaMessageSpendLimitOverrideResult =
      $sms -voice->SetMediaMessageSpendLimitOverride(
      MonthlyLimit => 1,

      );

    # Results:
    my $MonthlyLimit = $SetMediaMessageSpendLimitOverrideResult->MonthlyLimit;

# Returns a L<Paws::PinpointSMSVoiceV2::SetMediaMessageSpendLimitOverrideResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/SetMediaMessageSpendLimitOverride>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonthlyLimit => Int

The new monthly limit to enforce on text messages.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetMediaMessageSpendLimitOverride in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

