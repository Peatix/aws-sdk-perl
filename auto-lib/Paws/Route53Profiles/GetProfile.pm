
package Paws::Route53Profiles::GetProfile;
  use Moose;
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profile/{ProfileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Profiles::GetProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::GetProfile - Arguments for method GetProfile on L<Paws::Route53Profiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProfile on the
L<Route 53 Profiles|Paws::Route53Profiles> service. Use the attributes of this class
as arguments to method GetProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProfile.

=head1 SYNOPSIS

    my $route53profiles = Paws->service('Route53Profiles');
    my $GetProfileResponse = $route53profiles->GetProfile(
      ProfileId => 'MyResourceId',

    );

    # Results:
    my $Profile = $GetProfileResponse->Profile;

    # Returns a L<Paws::Route53Profiles::GetProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53profiles/GetProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileId => Str

ID of the Profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProfile in L<Paws::Route53Profiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

