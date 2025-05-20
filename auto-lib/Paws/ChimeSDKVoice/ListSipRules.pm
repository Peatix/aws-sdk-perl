
package Paws::ChimeSDKVoice::ListSipRules;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has SipMediaApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sip-media-application');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSipRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sip-rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::ListSipRulesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListSipRules - Arguments for method ListSipRules on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSipRules on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method ListSipRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSipRules.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $ListSipRulesResponse = $voice -chime->ListSipRules(
      MaxResults            => 1,                      # OPTIONAL
      NextToken             => 'MyNextTokenString',    # OPTIONAL
      SipMediaApplicationId => 'MyNonEmptyString',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSipRulesResponse->NextToken;
    my $SipRules  = $ListSipRulesResponse->SipRules;

    # Returns a L<Paws::ChimeSDKVoice::ListSipRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/ListSipRules>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call. Defaults to
100.



=head2 NextToken => Str

The token used to return the next page of results.



=head2 SipMediaApplicationId => Str

The SIP media application ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSipRules in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

