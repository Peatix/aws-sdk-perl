
package Paws::PinpointSMSVoiceV2::DescribePhoneNumbers;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::PhoneNumberFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has PhoneNumberIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePhoneNumbers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DescribePhoneNumbersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribePhoneNumbers - Arguments for method DescribePhoneNumbers on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePhoneNumbers on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DescribePhoneNumbers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePhoneNumbers.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DescribePhoneNumbersResult = $sms -voice->DescribePhoneNumbers(
      Filters => [
        {
          Name => 'status'
          , # values: status, iso-country-code, message-type, number-capability, number-type, two-way-enabled, self-managed-opt-outs-enabled, opt-out-list-name, deletion-protection-enabled, two-way-channel-arn
          Values => [
            'MyFilterValue', ...    # min: 1, max: 128
          ],    # min: 1, max: 20

        },
        ...
      ],    # OPTIONAL
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
      Owner          => 'SELF',           # OPTIONAL
      PhoneNumberIds => [
        'MyPhoneNumberIdOrArn', ...       # min: 1, max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken    = $DescribePhoneNumbersResult->NextToken;
    my $PhoneNumbers = $DescribePhoneNumbersResult->PhoneNumbers;

    # Returns a L<Paws::PinpointSMSVoiceV2::DescribePhoneNumbersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DescribePhoneNumbers>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::PhoneNumberFilter>]

An array of PhoneNumberFilter objects to filter the results.



=head2 MaxResults => Int

The maximum number of results to return per each request.



=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.



=head2 Owner => Str

Use C<SELF> to filter the list of phone numbers to ones your account
owns or use C<SHARED> to filter on phone numbers shared with your
account. The C<Owner> and C<PhoneNumberIds> parameters can't be used at
the same time.

Valid values are: C<"SELF">, C<"SHARED">

=head2 PhoneNumberIds => ArrayRef[Str|Undef]

The unique identifier of phone numbers to find information about. This
is an array of strings that can be either the PhoneNumberId or
PhoneNumberArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePhoneNumbers in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

