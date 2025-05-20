
package Paws::RolesAnywhere::CreateProfile;
  use Moose;
  has AcceptRoleSessionName => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'acceptRoleSessionName');
  has DurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'durationSeconds');
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');
  has ManagedPolicyArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'managedPolicyArns');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RequireInstanceProperties => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'requireInstanceProperties');
  has RoleArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'roleArns', required => 1);
  has SessionPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionPolicy');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RolesAnywhere::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::ProfileDetailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::CreateProfile - Arguments for method CreateProfile on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProfile on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method CreateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProfile.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $ProfileDetailResponse = $rolesanywhere->CreateProfile(
      Name     => 'MyResourceName',
      RoleArns => [
        'MyRoleArn', ...    # min: 1, max: 1011
      ],
      AcceptRoleSessionName => 1,    # OPTIONAL
      DurationSeconds       => 1,    # OPTIONAL
      Enabled               => 1,    # OPTIONAL
      ManagedPolicyArns     => [
        'MyManagedPolicyListMemberString', ...    # min: 1, max: 200
      ],    # OPTIONAL
      RequireInstanceProperties => 1,             # OPTIONAL
      SessionPolicy             => 'MyString',    # OPTIONAL
      Tags                      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Profile = $ProfileDetailResponse->Profile;

    # Returns a L<Paws::RolesAnywhere::ProfileDetailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/CreateProfile>

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



=head2 Enabled => Bool

Specifies whether the profile is enabled.



=head2 ManagedPolicyArns => ArrayRef[Str|Undef]

A list of managed policy ARNs that apply to the vended session
credentials.



=head2 B<REQUIRED> Name => Str

The name of the profile.



=head2 RequireInstanceProperties => Bool

Specifies whether instance properties are required in temporary
credential requests with this profile.



=head2 B<REQUIRED> RoleArns => ArrayRef[Str|Undef]

A list of IAM roles that this profile can assume in a temporary
credential request.



=head2 SessionPolicy => Str

A session policy that applies to the trust boundary of the vended
session credentials.



=head2 Tags => ArrayRef[L<Paws::RolesAnywhere::Tag>]

The tags to attach to the profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProfile in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

