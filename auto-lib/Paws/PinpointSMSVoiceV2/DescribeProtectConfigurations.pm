
package Paws::PinpointSMSVoiceV2::DescribeProtectConfigurations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::ProtectConfigurationFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProtectConfigurationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProtectConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DescribeProtectConfigurationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeProtectConfigurations - Arguments for method DescribeProtectConfigurations on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProtectConfigurations on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DescribeProtectConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProtectConfigurations.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DescribeProtectConfigurationsResult =
      $sms -voice->DescribeProtectConfigurations(
      Filters => [
        {
          Name => 'account-default'
          ,    # values: account-default, deletion-protection-enabled
          Values => [
            'MyFilterValue', ...    # min: 1, max: 128
          ],    # min: 1, max: 20

        },
        ...
      ],    # OPTIONAL
      MaxResults              => 1,                # OPTIONAL
      NextToken               => 'MyNextToken',    # OPTIONAL
      ProtectConfigurationIds => [
        'MyProtectConfigurationIdOrArn', ...       # min: 1, max: 256
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeProtectConfigurationsResult->NextToken;
    my $ProtectConfigurations =
      $DescribeProtectConfigurationsResult->ProtectConfigurations;

# Returns a L<Paws::PinpointSMSVoiceV2::DescribeProtectConfigurationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DescribeProtectConfigurations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::ProtectConfigurationFilter>]

An array of ProtectConfigurationFilter objects to filter the results.



=head2 MaxResults => Int

The maximum number of results to return per each request.



=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.



=head2 ProtectConfigurationIds => ArrayRef[Str|Undef]

An array of protect configuration identifiers to search for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProtectConfigurations in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

