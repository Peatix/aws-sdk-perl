
package Paws::QApps::UpdateQAppPermissions;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId', required => 1);
  has GrantPermissions => (is => 'ro', isa => 'ArrayRef[Paws::QApps::PermissionInput]', traits => ['NameInRequest'], request_name => 'grantPermissions');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has RevokePermissions => (is => 'ro', isa => 'ArrayRef[Paws::QApps::PermissionInput]', traits => ['NameInRequest'], request_name => 'revokePermissions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQAppPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps.updateQAppPermissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::UpdateQAppPermissionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::UpdateQAppPermissions - Arguments for method UpdateQAppPermissions on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQAppPermissions on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method UpdateQAppPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQAppPermissions.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $UpdateQAppPermissionsOutput = $data . qapps->UpdateQAppPermissions(
      AppId            => 'MyUUID',
      InstanceId       => 'MyInstanceId',
      GrantPermissions => [
        {
          Action    => 'read',    # values: read, writemin: 1, max: 20
          Principal => 'MyPermissionInputPrincipalString',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      RevokePermissions => [
        {
          Action    => 'read',    # values: read, writemin: 1, max: 20
          Principal => 'MyPermissionInputPrincipalString',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AppId       = $UpdateQAppPermissionsOutput->AppId;
    my $Permissions = $UpdateQAppPermissionsOutput->Permissions;
    my $ResourceArn = $UpdateQAppPermissionsOutput->ResourceArn;

    # Returns a L<Paws::QApps::UpdateQAppPermissionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/UpdateQAppPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique identifier of the Amazon Q App for which permissions are
being updated.



=head2 GrantPermissions => ArrayRef[L<Paws::QApps::PermissionInput>]

The list of permissions to grant for the Amazon Q App.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 RevokePermissions => ArrayRef[L<Paws::QApps::PermissionInput>]

The list of permissions to revoke for the Amazon Q App.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQAppPermissions in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

