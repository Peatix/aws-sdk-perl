package Paws::EC2::VerifiedAccessTrustProvider;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DeviceOptions => (is => 'ro', isa => 'Paws::EC2::DeviceOptions', request_name => 'deviceOptions', traits => ['NameInRequest']);
  has DeviceTrustProviderType => (is => 'ro', isa => 'Str', request_name => 'deviceTrustProviderType', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has NativeApplicationOidcOptions => (is => 'ro', isa => 'Paws::EC2::NativeApplicationOidcOptions', request_name => 'nativeApplicationOidcOptions', traits => ['NameInRequest']);
  has OidcOptions => (is => 'ro', isa => 'Paws::EC2::OidcOptions', request_name => 'oidcOptions', traits => ['NameInRequest']);
  has PolicyReferenceName => (is => 'ro', isa => 'Str', request_name => 'policyReferenceName', traits => ['NameInRequest']);
  has SseSpecification => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessSseSpecificationResponse', request_name => 'sseSpecification', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TrustProviderType => (is => 'ro', isa => 'Str', request_name => 'trustProviderType', traits => ['NameInRequest']);
  has UserTrustProviderType => (is => 'ro', isa => 'Str', request_name => 'userTrustProviderType', traits => ['NameInRequest']);
  has VerifiedAccessTrustProviderId => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessTrustProviderId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VerifiedAccessTrustProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VerifiedAccessTrustProvider object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., VerifiedAccessTrustProviderId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VerifiedAccessTrustProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTime => Str

The creation time.


=head2 Description => Str

A description for the Amazon Web Services Verified Access trust
provider.


=head2 DeviceOptions => L<Paws::EC2::DeviceOptions>

The options for device-identity trust provider.


=head2 DeviceTrustProviderType => Str

The type of device-based trust provider.


=head2 LastUpdatedTime => Str

The last updated time.


=head2 NativeApplicationOidcOptions => L<Paws::EC2::NativeApplicationOidcOptions>

The OpenID Connect (OIDC) options.


=head2 OidcOptions => L<Paws::EC2::OidcOptions>

The options for an OpenID Connect-compatible user-identity trust
provider.


=head2 PolicyReferenceName => Str

The identifier to be used when working with policy rules.


=head2 SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationResponse>

The options in use for server side encryption.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags.


=head2 TrustProviderType => Str

The type of Verified Access trust provider.


=head2 UserTrustProviderType => Str

The type of user-based trust provider.


=head2 VerifiedAccessTrustProviderId => Str

The ID of the Amazon Web Services Verified Access trust provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
