
package Paws::PinpointSMSVoiceV2::DescribeOptOutLists;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OptOutListNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Owner => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOptOutLists');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DescribeOptOutListsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeOptOutLists - Arguments for method DescribeOptOutLists on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOptOutLists on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DescribeOptOutLists.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOptOutLists.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DescribeOptOutListsResult = $sms -voice->DescribeOptOutLists(
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
      OptOutListNames => [
        'MyOptOutListNameOrArn', ...       # min: 1, max: 256
      ],    # OPTIONAL
      Owner => 'SELF',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $DescribeOptOutListsResult->NextToken;
    my $OptOutLists = $DescribeOptOutListsResult->OptOutLists;

    # Returns a L<Paws::PinpointSMSVoiceV2::DescribeOptOutListsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DescribeOptOutLists>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per each request.



=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.



=head2 OptOutListNames => ArrayRef[Str|Undef]

The OptOutLists to show the details of. This is an array of strings
that can be either the OptOutListName or OptOutListArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 Owner => Str

Use C<SELF> to filter the list of Opt-Out List to ones your account
owns or use C<SHARED> to filter on Opt-Out List shared with your
account. The C<Owner> and C<OptOutListNames> parameters can't be used
at the same time.

Valid values are: C<"SELF">, C<"SHARED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOptOutLists in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

