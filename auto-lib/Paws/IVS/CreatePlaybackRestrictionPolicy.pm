
package Paws::IVS::CreatePlaybackRestrictionPolicy;
  use Moose;
  has AllowedCountries => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'allowedCountries');
  has AllowedOrigins => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'allowedOrigins');
  has EnableStrictOriginEnforcement => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableStrictOriginEnforcement');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::IVS::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlaybackRestrictionPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreatePlaybackRestrictionPolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::CreatePlaybackRestrictionPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::CreatePlaybackRestrictionPolicy - Arguments for method CreatePlaybackRestrictionPolicy on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlaybackRestrictionPolicy on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method CreatePlaybackRestrictionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlaybackRestrictionPolicy.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $CreatePlaybackRestrictionPolicyResponse =
      $ivs->CreatePlaybackRestrictionPolicy(
      AllowedCountries => [
        'MyPlaybackRestrictionPolicyAllowedCountry', ...    # min: 2, max: 2
      ],    # OPTIONAL
      AllowedOrigins => [
        'MyPlaybackRestrictionPolicyAllowedOrigin', ...    # max: 128
      ],    # OPTIONAL
      EnableStrictOriginEnforcement => 1,           # OPTIONAL
      Name => 'MyPlaybackRestrictionPolicyName',    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $PlaybackRestrictionPolicy =
      $CreatePlaybackRestrictionPolicyResponse->PlaybackRestrictionPolicy;

    # Returns a L<Paws::IVS::CreatePlaybackRestrictionPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/CreatePlaybackRestrictionPolicy>

=head1 ATTRIBUTES


=head2 AllowedCountries => ArrayRef[Str|Undef]

A list of country codes that control geoblocking restriction. Allowed
values are the officially assigned ISO 3166-1 alpha-2
(https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) codes. Default: All
countries (an empty array).



=head2 AllowedOrigins => ArrayRef[Str|Undef]

A list of origin sites that control CORS restriction. Allowed values
are the same as valid values of the Origin header defined at
https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin
(https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin).
Default: All origins (an empty array).



=head2 EnableStrictOriginEnforcement => Bool

Whether channel playback is constrained by origin site. Default:
C<false>.



=head2 Name => Str

Playback-restriction-policy name. The value does not need to be unique.



=head2 Tags => L<Paws::IVS::Tags>

Array of 1-50 maps, each of the form C<string:string (key:value)>. See
Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging Amazon Web Services Resources and Tag Editor> for details,
including restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no service-specific constraints beyond
what is documented there.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlaybackRestrictionPolicy in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

