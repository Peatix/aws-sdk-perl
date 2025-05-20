
package Paws::PinpointSMSVoiceV2::DescribeRegistrationAttachments;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::RegistrationAttachmentFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RegistrationAttachmentIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegistrationAttachments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DescribeRegistrationAttachmentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeRegistrationAttachments - Arguments for method DescribeRegistrationAttachments on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRegistrationAttachments on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DescribeRegistrationAttachments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRegistrationAttachments.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DescribeRegistrationAttachmentsResult =
      $sms -voice->DescribeRegistrationAttachments(
      Filters => [
        {
          Name   => 'attachment-status',    # values: attachment-status
          Values => [
            'MyFilterValue', ...            # min: 1, max: 128
          ],    # min: 1, max: 20

        },
        ...
      ],    # OPTIONAL
      MaxResults                => 1,                # OPTIONAL
      NextToken                 => 'MyNextToken',    # OPTIONAL
      RegistrationAttachmentIds => [
        'MyRegistrationIdOrArn', ...                 # min: 1, max: 256
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeRegistrationAttachmentsResult->NextToken;
    my $RegistrationAttachments =
      $DescribeRegistrationAttachmentsResult->RegistrationAttachments;

# Returns a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationAttachmentsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DescribeRegistrationAttachments>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationAttachmentFilter>]

An array of RegistrationAttachmentFilter objects to filter the results.



=head2 MaxResults => Int

The maximum number of results to return per each request.



=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.



=head2 RegistrationAttachmentIds => ArrayRef[Str|Undef]

The unique identifier of registration attachments to find. This is an
array of B<RegistrationAttachmentId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRegistrationAttachments in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

