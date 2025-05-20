
package Paws::Route53Profiles::AssociateResourceToProfile;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ProfileId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has ResourceProperties => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateResourceToProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profileresourceassociation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Profiles::AssociateResourceToProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::AssociateResourceToProfile - Arguments for method AssociateResourceToProfile on L<Paws::Route53Profiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateResourceToProfile on the
L<Route 53 Profiles|Paws::Route53Profiles> service. Use the attributes of this class
as arguments to method AssociateResourceToProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateResourceToProfile.

=head1 SYNOPSIS

    my $route53profiles = Paws->service('Route53Profiles');
    my $AssociateResourceToProfileResponse =
      $route53profiles->AssociateResourceToProfile(
      Name               => 'MyName',
      ProfileId          => 'MyResourceId',
      ResourceArn        => 'MyArn',
      ResourceProperties => 'MyResourceProperties',    # OPTIONAL
      );

    # Results:
    my $ProfileResourceAssociation =
      $AssociateResourceToProfileResponse->ProfileResourceAssociation;

# Returns a L<Paws::Route53Profiles::AssociateResourceToProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53profiles/AssociateResourceToProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Name for the resource association.



=head2 B<REQUIRED> ProfileId => Str

ID of the Profile.



=head2 B<REQUIRED> ResourceArn => Str

Amazon resource number, ARN, of the DNS resource.



=head2 ResourceProperties => Str

If you are adding a DNS Firewall rule group, include also a priority.
The priority indicates the processing order for the rule groups,
starting with the priority assinged the lowest value.

The allowed values for priority are between 100 and 9900.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateResourceToProfile in L<Paws::Route53Profiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

