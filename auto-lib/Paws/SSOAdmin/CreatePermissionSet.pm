
package Paws::SSOAdmin::CreatePermissionSet;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RelayState => (is => 'ro', isa => 'Str');
  has SessionDuration => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePermissionSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::CreatePermissionSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::CreatePermissionSet - Arguments for method CreatePermissionSet on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePermissionSet on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method CreatePermissionSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePermissionSet.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $CreatePermissionSetResponse = $sso->CreatePermissionSet(
      InstanceArn     => 'MyInstanceArn',
      Name            => 'MyPermissionSetName',
      Description     => 'MyPermissionSetDescription',    # OPTIONAL
      RelayState      => 'MyRelayState',                  # OPTIONAL
      SessionDuration => 'MyDuration',                    # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $PermissionSet = $CreatePermissionSetResponse->PermissionSet;

    # Returns a L<Paws::SSOAdmin::CreatePermissionSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/CreatePermissionSet>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the PermissionSet.



=head2 B<REQUIRED> InstanceArn => Str

The ARN of the IAM Identity Center instance under which the operation
will be executed. For more information about ARNs, see Amazon Resource
Names (ARNs) and Amazon Web Services Service Namespaces in the I<Amazon
Web Services General Reference>.



=head2 B<REQUIRED> Name => Str

The name of the PermissionSet.



=head2 RelayState => Str

Used to redirect users within the application during the federation
authentication process.



=head2 SessionDuration => Str

The length of time that the application user sessions are valid in the
ISO-8601 standard.



=head2 Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]

The tags to attach to the new PermissionSet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePermissionSet in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

