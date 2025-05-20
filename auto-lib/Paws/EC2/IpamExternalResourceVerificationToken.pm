package Paws::EC2::IpamExternalResourceVerificationToken;
  use Moose;
  has IpamArn => (is => 'ro', isa => 'Str', request_name => 'ipamArn', traits => ['NameInRequest']);
  has IpamExternalResourceVerificationTokenArn => (is => 'ro', isa => 'Str', request_name => 'ipamExternalResourceVerificationTokenArn', traits => ['NameInRequest']);
  has IpamExternalResourceVerificationTokenId => (is => 'ro', isa => 'Str', request_name => 'ipamExternalResourceVerificationTokenId', traits => ['NameInRequest']);
  has IpamId => (is => 'ro', isa => 'Str', request_name => 'ipamId', traits => ['NameInRequest']);
  has IpamRegion => (is => 'ro', isa => 'Str', request_name => 'ipamRegion', traits => ['NameInRequest']);
  has NotAfter => (is => 'ro', isa => 'Str', request_name => 'notAfter', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TokenName => (is => 'ro', isa => 'Str', request_name => 'tokenName', traits => ['NameInRequest']);
  has TokenValue => (is => 'ro', isa => 'Str', request_name => 'tokenValue', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamExternalResourceVerificationToken

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamExternalResourceVerificationToken object:

  $service_obj->Method(Att1 => { IpamArn => $value, ..., TokenValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamExternalResourceVerificationToken object:

  $result = $service_obj->Method(...);
  $result->Att1->IpamArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 IpamArn => Str

ARN of the IPAM that created the token.


=head2 IpamExternalResourceVerificationTokenArn => Str

Token ARN.


=head2 IpamExternalResourceVerificationTokenId => Str

The ID of the token.


=head2 IpamId => Str

The ID of the IPAM that created the token.


=head2 IpamRegion => Str

Region of the IPAM that created the token.


=head2 NotAfter => Str

Token expiration.


=head2 State => Str

Token state.


=head2 Status => Str

Token status.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Token tags.


=head2 TokenName => Str

Token name.


=head2 TokenValue => Str

Token value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
