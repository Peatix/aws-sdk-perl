
package Paws::PinpointSMSVoiceV2::ListProtectConfigurationRuleSetNumberOverrides;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::ProtectConfigurationRuleSetNumberOverrideFilterItem]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProtectConfigurationRuleSetNumberOverrides');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::ListProtectConfigurationRuleSetNumberOverridesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::ListProtectConfigurationRuleSetNumberOverrides - Arguments for method ListProtectConfigurationRuleSetNumberOverrides on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProtectConfigurationRuleSetNumberOverrides on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method ListProtectConfigurationRuleSetNumberOverrides.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProtectConfigurationRuleSetNumberOverrides.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $ListProtectConfigurationRuleSetNumberOverridesResult =
      $sms -voice->ListProtectConfigurationRuleSetNumberOverrides(
      ProtectConfigurationId => 'MyProtectConfigurationIdOrArn',
      Filters                => [
        {
          Name => 'iso-country-code'
          , # values: iso-country-code, destination-phone-number-begins-with, action, expires-before, expires-after, created-before, created-after
          Values => [
            'MyFilterValue', ...    # min: 1, max: 128
          ],    # min: 1, max: 20

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken =
      $ListProtectConfigurationRuleSetNumberOverridesResult->NextToken;
    my $ProtectConfigurationArn =
      $ListProtectConfigurationRuleSetNumberOverridesResult
      ->ProtectConfigurationArn;
    my $ProtectConfigurationId =
      $ListProtectConfigurationRuleSetNumberOverridesResult
      ->ProtectConfigurationId;
    my $RuleSetNumberOverrides =
      $ListProtectConfigurationRuleSetNumberOverridesResult
      ->RuleSetNumberOverrides;

# Returns a L<Paws::PinpointSMSVoiceV2::ListProtectConfigurationRuleSetNumberOverridesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/ListProtectConfigurationRuleSetNumberOverrides>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::ProtectConfigurationRuleSetNumberOverrideFilterItem>]

An array of ProtectConfigurationRuleSetNumberOverrideFilterItem objects
to filter the results.



=head2 MaxResults => Int

The maximum number of results to return per each request.



=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.



=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProtectConfigurationRuleSetNumberOverrides in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

