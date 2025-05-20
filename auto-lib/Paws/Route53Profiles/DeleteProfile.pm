
package Paws::Route53Profiles::DeleteProfile;
  use Moose;
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profile/{ProfileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Profiles::DeleteProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::DeleteProfile - Arguments for method DeleteProfile on L<Paws::Route53Profiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProfile on the
L<Route 53 Profiles|Paws::Route53Profiles> service. Use the attributes of this class
as arguments to method DeleteProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProfile.

=head1 SYNOPSIS

    my $route53profiles = Paws->service('Route53Profiles');
    my $DeleteProfileResponse = $route53profiles->DeleteProfile(
      ProfileId => 'MyResourceId',

    );

    # Results:
    my $Profile = $DeleteProfileResponse->Profile;

    # Returns a L<Paws::Route53Profiles::DeleteProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53profiles/DeleteProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileId => Str

The ID of the Profile that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProfile in L<Paws::Route53Profiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

