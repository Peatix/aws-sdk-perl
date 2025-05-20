package Paws::EC2::RemoveIpamOrganizationalUnitExclusion;
  use Moose;
  has OrganizationsEntityPath => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RemoveIpamOrganizationalUnitExclusion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RemoveIpamOrganizationalUnitExclusion object:

  $service_obj->Method(Att1 => { OrganizationsEntityPath => $value, ..., OrganizationsEntityPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RemoveIpamOrganizationalUnitExclusion object:

  $result = $service_obj->Method(...);
  $result->Att1->OrganizationsEntityPath

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 OrganizationsEntityPath => Str

An Amazon Web Services Organizations entity path. Build the path for
the OU(s) using Amazon Web Services Organizations IDs separated by a
C</>. Include all child OUs by ending the path with C</*>.

=over

=item *

Example 1

=over

=item *

Path to a child OU:
C<o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-ghi0-awsccccc/ou-jkl0-awsddddd/>

=item *

In this example, C<o-a1b2c3d4e5> is the organization ID,
C<r-f6g7h8i9j0example> is the root ID , C<ou-ghi0-awsccccc> is an OU
ID, and C<ou-jkl0-awsddddd> is a child OU ID.

=item *

IPAM will not manage the IP addresses in accounts in the child OU.

=back

=item *

Example 2

=over

=item *

Path where all child OUs will be part of the exclusion:
C<o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-ghi0-awsccccc/*>

=item *

In this example, IPAM will not manage the IP addresses in accounts in
the OU (C<ou-ghi0-awsccccc>) or in accounts in any OUs that are
children of the OU.

=back

=back

For more information on how to construct an entity path, see Understand
the Amazon Web Services Organizations entity path
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_last-accessed-view-data-orgs.html#access_policies_access-advisor-viewing-orgs-entity-path)
in the I<Amazon Web Services Identity and Access Management User
Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
