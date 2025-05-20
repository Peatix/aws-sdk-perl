
package Paws::PinpointSMSVoiceV2::DeleteOptOutList;
  use Moose;
  has OptOutListName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteOptOutList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DeleteOptOutListResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteOptOutList - Arguments for method DeleteOptOutList on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteOptOutList on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DeleteOptOutList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteOptOutList.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DeleteOptOutListResult = $sms -voice->DeleteOptOutList(
      OptOutListName => 'MyOptOutListNameOrArn',

    );

    # Results:
    my $CreatedTimestamp = $DeleteOptOutListResult->CreatedTimestamp;
    my $OptOutListArn    = $DeleteOptOutListResult->OptOutListArn;
    my $OptOutListName   = $DeleteOptOutListResult->OptOutListName;

    # Returns a L<Paws::PinpointSMSVoiceV2::DeleteOptOutListResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DeleteOptOutList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OptOutListName => Str

The OptOutListName or OptOutListArn of the OptOutList to delete. You
can use DescribeOptOutLists to find the values for OptOutListName and
OptOutListArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteOptOutList in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

