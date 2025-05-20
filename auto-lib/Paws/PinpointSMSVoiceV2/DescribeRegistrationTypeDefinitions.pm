
package Paws::PinpointSMSVoiceV2::DescribeRegistrationTypeDefinitions;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::RegistrationTypeFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RegistrationTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegistrationTypeDefinitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DescribeRegistrationTypeDefinitionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeRegistrationTypeDefinitions - Arguments for method DescribeRegistrationTypeDefinitions on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRegistrationTypeDefinitions on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DescribeRegistrationTypeDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRegistrationTypeDefinitions.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DescribeRegistrationTypeDefinitionsResult =
      $sms -voice->DescribeRegistrationTypeDefinitions(
      Filters => [
        {
          Name => 'supported-association-resource-type'
          , # values: supported-association-resource-type, supported-association-iso-country-code
          Values => [
            'MyFilterValue', ...    # min: 1, max: 128
          ],    # min: 1, max: 20

        },
        ...
      ],    # OPTIONAL
      MaxResults        => 1,                # OPTIONAL
      NextToken         => 'MyNextToken',    # OPTIONAL
      RegistrationTypes => [
        'MyRegistrationType', ...            # min: 1, max: 64
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeRegistrationTypeDefinitionsResult->NextToken;
    my $RegistrationTypeDefinitions =
      $DescribeRegistrationTypeDefinitionsResult->RegistrationTypeDefinitions;

# Returns a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationTypeDefinitionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DescribeRegistrationTypeDefinitions>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationTypeFilter>]

An array of RegistrationFilter objects to filter the results.



=head2 MaxResults => Int

The maximum number of results to return per each request.



=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.



=head2 RegistrationTypes => ArrayRef[Str|Undef]

The type of registration form. The list of B<RegistrationTypes> can be
found using the DescribeRegistrationTypeDefinitions action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRegistrationTypeDefinitions in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

