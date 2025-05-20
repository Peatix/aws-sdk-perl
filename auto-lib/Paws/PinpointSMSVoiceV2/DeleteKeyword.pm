
package Paws::PinpointSMSVoiceV2::DeleteKeyword;
  use Moose;
  has Keyword => (is => 'ro', isa => 'Str', required => 1);
  has OriginationIdentity => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKeyword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DeleteKeywordResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteKeyword - Arguments for method DeleteKeyword on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteKeyword on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DeleteKeyword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteKeyword.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DeleteKeywordResult = $sms -voice->DeleteKeyword(
      Keyword             => 'MyKeyword',
      OriginationIdentity => 'MyPhoneOrPoolIdOrArn',

    );

    # Results:
    my $Keyword                = $DeleteKeywordResult->Keyword;
    my $KeywordAction          = $DeleteKeywordResult->KeywordAction;
    my $KeywordMessage         = $DeleteKeywordResult->KeywordMessage;
    my $OriginationIdentity    = $DeleteKeywordResult->OriginationIdentity;
    my $OriginationIdentityArn = $DeleteKeywordResult->OriginationIdentityArn;

    # Returns a L<Paws::PinpointSMSVoiceV2::DeleteKeywordResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DeleteKeyword>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Keyword => Str

The keyword to delete.



=head2 B<REQUIRED> OriginationIdentity => Str

The origination identity to use such as a PhoneNumberId,
PhoneNumberArn, PoolId or PoolArn. You can use DescribePhoneNumbers to
find the values for PhoneNumberId and PhoneNumberArn and DescribePools
to find the values of PoolId and PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteKeyword in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

