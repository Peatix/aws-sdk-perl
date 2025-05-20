
package Paws::ChimeSDKVoice::ListVoiceProfileDomains;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVoiceProfileDomains');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-profile-domains');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::ListVoiceProfileDomainsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListVoiceProfileDomains - Arguments for method ListVoiceProfileDomains on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVoiceProfileDomains on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method ListVoiceProfileDomains.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVoiceProfileDomains.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $ListVoiceProfileDomainsResponse =
      $voice -chime->ListVoiceProfileDomains(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListVoiceProfileDomainsResponse->NextToken;
    my $VoiceProfileDomains =
      $ListVoiceProfileDomainsResponse->VoiceProfileDomains;

    # Returns a L<Paws::ChimeSDKVoice::ListVoiceProfileDomainsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/ListVoiceProfileDomains>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token used to return the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVoiceProfileDomains in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

