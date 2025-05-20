
package Paws::Connect::CreateSecurityProfile;
  use Moose;
  has AllowedAccessControlHierarchyGroupId => (is => 'ro', isa => 'Str');
  has AllowedAccessControlTags => (is => 'ro', isa => 'Paws::Connect::AllowedAccessControlTags');
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::Connect::Application]');
  has Description => (is => 'ro', isa => 'Str');
  has HierarchyRestrictedResources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SecurityProfileName => (is => 'ro', isa => 'Str', required => 1);
  has TagRestrictedResources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecurityProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/security-profiles/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateSecurityProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateSecurityProfile - Arguments for method CreateSecurityProfile on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSecurityProfile on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateSecurityProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSecurityProfile.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateSecurityProfileResponse = $connect->CreateSecurityProfile(
      InstanceId                           => 'MyInstanceId',
      SecurityProfileName                  => 'MyCreateSecurityProfileName',
      AllowedAccessControlHierarchyGroupId => 'MyHierarchyGroupId',   # OPTIONAL
      AllowedAccessControlTags             => {
        'MySecurityProfilePolicyKey' => 'MySecurityProfilePolicyValue'
        ,    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Applications => [
        {
          ApplicationPermissions => [
            'MyPermission', ...    # min: 1, max: 128
          ],    # min: 1, max: 10; OPTIONAL
          Namespace => 'MyNamespace',    # min: 1, max: 128; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Description                  => 'MySecurityProfileDescription', # OPTIONAL
      HierarchyRestrictedResources => [
        'MyHierarchyRestrictedResourceName', ...    # min: 1, max: 128
      ],    # OPTIONAL
      Permissions => [
        'MySecurityProfilePermission', ...    # min: 1, max: 128
      ],    # OPTIONAL
      TagRestrictedResources => [
        'MyTagRestrictedResourceName', ...    # min: 1, max: 128
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $SecurityProfileArn = $CreateSecurityProfileResponse->SecurityProfileArn;
    my $SecurityProfileId  = $CreateSecurityProfileResponse->SecurityProfileId;

    # Returns a L<Paws::Connect::CreateSecurityProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateSecurityProfile>

=head1 ATTRIBUTES


=head2 AllowedAccessControlHierarchyGroupId => Str

The identifier of the hierarchy group that a security profile uses to
restrict access to resources in Amazon Connect.



=head2 AllowedAccessControlTags => L<Paws::Connect::AllowedAccessControlTags>

The list of tags that a security profile uses to restrict access to
resources in Amazon Connect.



=head2 Applications => ArrayRef[L<Paws::Connect::Application>]

A list of third-party applications that the security profile will give
access to.



=head2 Description => Str

The description of the security profile.



=head2 HierarchyRestrictedResources => ArrayRef[Str|Undef]

The list of resources that a security profile applies hierarchy
restrictions to in Amazon Connect. Following are acceptable
ResourceNames: C<User>.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Permissions => ArrayRef[Str|Undef]

Permissions assigned to the security profile. For a list of valid
permissions, see List of security profile permissions
(https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).



=head2 B<REQUIRED> SecurityProfileName => Str

The name of the security profile.



=head2 TagRestrictedResources => ArrayRef[Str|Undef]

The list of resources that a security profile applies tag restrictions
to in Amazon Connect. For a list of Amazon Connect resources that you
can tag, see Add tags to resources in Amazon Connect
(https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html) in
the I<Amazon Connect Administrator Guide>.



=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSecurityProfile in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

