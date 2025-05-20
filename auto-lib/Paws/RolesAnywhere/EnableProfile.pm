
package Paws::RolesAnywhere::EnableProfile;
  use Moose;
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profile/{profileId}/enable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::ProfileDetailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::EnableProfile - Arguments for method EnableProfile on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableProfile on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method EnableProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableProfile.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $ProfileDetailResponse = $rolesanywhere->EnableProfile(
      ProfileId => 'MyUuid',

    );

    # Results:
    my $Profile = $ProfileDetailResponse->Profile;

    # Returns a L<Paws::RolesAnywhere::ProfileDetailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/EnableProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileId => Str

The unique identifier of the profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableProfile in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

