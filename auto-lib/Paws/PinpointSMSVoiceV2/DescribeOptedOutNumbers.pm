
package Paws::PinpointSMSVoiceV2::DescribeOptedOutNumbers;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::OptedOutFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OptedOutNumbers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OptOutListName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOptedOutNumbers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DescribeOptedOutNumbersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeOptedOutNumbers - Arguments for method DescribeOptedOutNumbers on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOptedOutNumbers on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DescribeOptedOutNumbers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOptedOutNumbers.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DescribeOptedOutNumbersResult = $sms -voice->DescribeOptedOutNumbers(
      OptOutListName => 'MyOptOutListNameOrArn',
      Filters        => [
        {
          Name   => 'end-user-opted-out',    # values: end-user-opted-out
          Values => [
            'MyFilterValue', ...             # min: 1, max: 128
          ],    # min: 1, max: 20

        },
        ...
      ],    # OPTIONAL
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
      OptedOutNumbers => [
        'MyPhoneNumber', ...               # min: 1, max: 20
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken       = $DescribeOptedOutNumbersResult->NextToken;
    my $OptOutListArn   = $DescribeOptedOutNumbersResult->OptOutListArn;
    my $OptOutListName  = $DescribeOptedOutNumbersResult->OptOutListName;
    my $OptedOutNumbers = $DescribeOptedOutNumbersResult->OptedOutNumbers;

  # Returns a L<Paws::PinpointSMSVoiceV2::DescribeOptedOutNumbersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DescribeOptedOutNumbers>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::OptedOutFilter>]

An array of OptedOutFilter objects to filter the results on.



=head2 MaxResults => Int

The maximum number of results to return per each request.



=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.



=head2 OptedOutNumbers => ArrayRef[Str|Undef]

An array of phone numbers to search for in the OptOutList.

If you specify an opted out number that isn't valid, an exception is
returned.



=head2 B<REQUIRED> OptOutListName => Str

The OptOutListName or OptOutListArn of the OptOutList. You can use
DescribeOptOutLists to find the values for OptOutListName and
OptOutListArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOptedOutNumbers in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

