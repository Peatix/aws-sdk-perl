
package Paws::RolesAnywhere::UpdateProfile;
  use Moose;
  has AcceptRoleSessionName => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'acceptRoleSessionName');
  has DurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'durationSeconds');
  has ManagedPolicyArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'managedPolicyArns');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profileId', required => 1);
  has RoleArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'roleArns');
  has SessionPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionPolicy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profile/{profileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::ProfileDetailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::UpdateProfile - Arguments for method UpdateProfile on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProfile on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method UpdateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProfile.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $ProfileDetailResponse = $rolesanywhere->UpdateProfile(
      ProfileId             => 'MyUuid',
      AcceptRoleSessionName => 1,          # OPTIONAL
      DurationSeconds       => 1,          # OPTIONAL
      ManagedPolicyArns     => [
        'MyManagedPolicyListMemberString', ...    # min: 1, max: 200
      ],    # OPTIONAL
      Name     => 'MyResourceName',    # OPTIONAL
      RoleArns => [
        'MyRoleArn', ...               # min: 1, max: 1011
      ],    # OPTIONAL
      SessionPolicy => 'MyUpdateProfileRequestSessionPolicyString',   # OPTIONAL
    );

    # Results:
    my $Profile = $ProfileDetailResponse->Profile;

    # Returns a L<Paws::RolesAnywhere::ProfileDetailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/UpdateProfile>

=head1 ATTRIBUTES


=head2 AcceptRoleSessionName => Bool

Used to determine if a custom role session name will be accepted in a
temporary credential request.



=head2 DurationSeconds => Int

Used to determine how long sessions vended using this profile are valid
for. See the C<Expiration> section of the CreateSession API
documentation
(https://docs.aws.amazon.com/rolesanywhere/latest/userguide/authentication-create-session.html#credentials-object)
page for more details. In requests, if this value is not provided, the
default value will be 3600.



=head2 ManagedPolicyArns => ArrayRef[Str|Undef]

A list of managed policy ARNs that apply to the vended session
credentials.



=head2 Name => Str

The name of the profile.



=head2 B<REQUIRED> ProfileId => Str

The unique identifier of the profile.



=head2 RoleArns => ArrayRef[Str|Undef]

A list of IAM roles that this profile can assume in a temporary
credential request.



=head2 SessionPolicy => Str

A session policy that applies to the trust boundary of the vended
session credentials.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProfile in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

