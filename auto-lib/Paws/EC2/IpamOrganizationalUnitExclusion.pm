package Paws::EC2::IpamOrganizationalUnitExclusion;
  use Moose;
  has OrganizationsEntityPath => (is => 'ro', isa => 'Str', request_name => 'organizationsEntityPath', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamOrganizationalUnitExclusion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamOrganizationalUnitExclusion object:

  $service_obj->Method(Att1 => { OrganizationsEntityPath => $value, ..., OrganizationsEntityPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamOrganizationalUnitExclusion object:

  $result = $service_obj->Method(...);
  $result->Att1->OrganizationsEntityPath

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 OrganizationsEntityPath => Str

An Amazon Web Services Organizations entity path. For more information
on the entity path, see Understand the Amazon Web Services
Organizations entity path
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_last-accessed-view-data-orgs.html#access_policies_access-advisor-viewing-orgs-entity-path)
in the I<Amazon Web Services Identity and Access Management User
Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
