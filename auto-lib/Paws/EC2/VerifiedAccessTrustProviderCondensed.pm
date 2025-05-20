package Paws::EC2::VerifiedAccessTrustProviderCondensed;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DeviceTrustProviderType => (is => 'ro', isa => 'Str', request_name => 'deviceTrustProviderType', traits => ['NameInRequest']);
  has TrustProviderType => (is => 'ro', isa => 'Str', request_name => 'trustProviderType', traits => ['NameInRequest']);
  has UserTrustProviderType => (is => 'ro', isa => 'Str', request_name => 'userTrustProviderType', traits => ['NameInRequest']);
  has VerifiedAccessTrustProviderId => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessTrustProviderId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VerifiedAccessTrustProviderCondensed

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VerifiedAccessTrustProviderCondensed object:

  $service_obj->Method(Att1 => { Description => $value, ..., VerifiedAccessTrustProviderId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VerifiedAccessTrustProviderCondensed object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

The description of trust provider.


=head2 DeviceTrustProviderType => Str

The type of device-based trust provider.


=head2 TrustProviderType => Str

The type of trust provider (user- or device-based).


=head2 UserTrustProviderType => Str

The type of user-based trust provider.


=head2 VerifiedAccessTrustProviderId => Str

The ID of the trust provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
