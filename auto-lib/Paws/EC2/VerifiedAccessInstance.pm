package Paws::EC2::VerifiedAccessInstance;
  use Moose;
  has CidrEndpointsCustomSubDomain => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessInstanceCustomSubDomain', request_name => 'cidrEndpointsCustomSubDomain', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has FipsEnabled => (is => 'ro', isa => 'Bool', request_name => 'fipsEnabled', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VerifiedAccessInstanceId => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessInstanceId', traits => ['NameInRequest']);
  has VerifiedAccessTrustProviders => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VerifiedAccessTrustProviderCondensed]', request_name => 'verifiedAccessTrustProviderSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VerifiedAccessInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VerifiedAccessInstance object:

  $service_obj->Method(Att1 => { CidrEndpointsCustomSubDomain => $value, ..., VerifiedAccessTrustProviders => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VerifiedAccessInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrEndpointsCustomSubDomain

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CidrEndpointsCustomSubDomain => L<Paws::EC2::VerifiedAccessInstanceCustomSubDomain>

The custom subdomain.


=head2 CreationTime => Str

The creation time.


=head2 Description => Str

A description for the Amazon Web Services Verified Access instance.


=head2 FipsEnabled => Bool

Indicates whether support for Federal Information Processing Standards
(FIPS) is enabled on the instance.


=head2 LastUpdatedTime => Str

The last updated time.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags.


=head2 VerifiedAccessInstanceId => Str

The ID of the Amazon Web Services Verified Access instance.


=head2 VerifiedAccessTrustProviders => ArrayRef[L<Paws::EC2::VerifiedAccessTrustProviderCondensed>]

The IDs of the Amazon Web Services Verified Access trust providers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
