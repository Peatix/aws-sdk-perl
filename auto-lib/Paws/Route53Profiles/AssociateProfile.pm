
package Paws::Route53Profiles::AssociateProfile;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ProfileId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Route53Profiles::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profileassociation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Profiles::AssociateProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::AssociateProfile - Arguments for method AssociateProfile on L<Paws::Route53Profiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateProfile on the
L<Route 53 Profiles|Paws::Route53Profiles> service. Use the attributes of this class
as arguments to method AssociateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateProfile.

=head1 SYNOPSIS

    my $route53profiles = Paws->service('Route53Profiles');
    my $AssociateProfileResponse = $route53profiles->AssociateProfile(
      Name       => 'MyName',
      ProfileId  => 'MyResourceId',
      ResourceId => 'MyResourceId',
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ProfileAssociation = $AssociateProfileResponse->ProfileAssociation;

    # Returns a L<Paws::Route53Profiles::AssociateProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53profiles/AssociateProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

A name for the association.



=head2 B<REQUIRED> ProfileId => Str

ID of the Profile.



=head2 B<REQUIRED> ResourceId => Str

The ID of the VPC.



=head2 Tags => ArrayRef[L<Paws::Route53Profiles::Tag>]

A list of the tag keys and values that you want to identify the Profile
association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateProfile in L<Paws::Route53Profiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

