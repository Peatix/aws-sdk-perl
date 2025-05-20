
package Paws::PinpointSMSVoiceV2::ListPoolOriginationIdentities;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::PoolOriginationIdentitiesFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPoolOriginationIdentities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::ListPoolOriginationIdentitiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::ListPoolOriginationIdentities - Arguments for method ListPoolOriginationIdentities on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPoolOriginationIdentities on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method ListPoolOriginationIdentities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPoolOriginationIdentities.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $ListPoolOriginationIdentitiesResult =
      $sms -voice->ListPoolOriginationIdentities(
      PoolId  => 'MyPoolIdOrArn',
      Filters => [
        {
          Name =>
            'iso-country-code',    # values: iso-country-code, number-capability
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
    my $NextToken = $ListPoolOriginationIdentitiesResult->NextToken;
    my $OriginationIdentities =
      $ListPoolOriginationIdentitiesResult->OriginationIdentities;
    my $PoolArn = $ListPoolOriginationIdentitiesResult->PoolArn;
    my $PoolId  = $ListPoolOriginationIdentitiesResult->PoolId;

# Returns a L<Paws::PinpointSMSVoiceV2::ListPoolOriginationIdentitiesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/ListPoolOriginationIdentities>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::PoolOriginationIdentitiesFilter>]

An array of PoolOriginationIdentitiesFilter objects to filter the
results..



=head2 MaxResults => Int

The maximum number of results to return per each request.



=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.



=head2 B<REQUIRED> PoolId => Str

The unique identifier for the pool. This value can be either the PoolId
or PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPoolOriginationIdentities in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

