
package Paws::SSOAdmin::AttachManagedPolicyToPermissionSet;
  use Moose;
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has ManagedPolicyArn => (is => 'ro', isa => 'Str', required => 1);
  has PermissionSetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachManagedPolicyToPermissionSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::AttachManagedPolicyToPermissionSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::AttachManagedPolicyToPermissionSet - Arguments for method AttachManagedPolicyToPermissionSet on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachManagedPolicyToPermissionSet on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method AttachManagedPolicyToPermissionSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachManagedPolicyToPermissionSet.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $AttachManagedPolicyToPermissionSetResponse =
      $sso->AttachManagedPolicyToPermissionSet(
      InstanceArn      => 'MyInstanceArn',
      ManagedPolicyArn => 'MyManagedPolicyArn',
      PermissionSetArn => 'MyPermissionSetArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/AttachManagedPolicyToPermissionSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceArn => Str

The ARN of the IAM Identity Center instance under which the operation
will be executed. For more information about ARNs, see Amazon Resource
Names (ARNs) and Amazon Web Services Service Namespaces in the I<Amazon
Web Services General Reference>.



=head2 B<REQUIRED> ManagedPolicyArn => Str

The Amazon Web Services managed policy ARN to be attached to a
permission set.



=head2 B<REQUIRED> PermissionSetArn => Str

The ARN of the PermissionSet that the managed policy should be attached
to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachManagedPolicyToPermissionSet in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

