
package Paws::SSOAdmin::DetachCustomerManagedPolicyReferenceFromPermissionSet;
  use Moose;
  has CustomerManagedPolicyReference => (is => 'ro', isa => 'Paws::SSOAdmin::CustomerManagedPolicyReference', required => 1);
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has PermissionSetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachCustomerManagedPolicyReferenceFromPermissionSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::DetachCustomerManagedPolicyReferenceFromPermissionSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DetachCustomerManagedPolicyReferenceFromPermissionSet - Arguments for method DetachCustomerManagedPolicyReferenceFromPermissionSet on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachCustomerManagedPolicyReferenceFromPermissionSet on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method DetachCustomerManagedPolicyReferenceFromPermissionSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachCustomerManagedPolicyReferenceFromPermissionSet.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $DetachCustomerManagedPolicyReferenceFromPermissionSetResponse =
      $sso->DetachCustomerManagedPolicyReferenceFromPermissionSet(
      CustomerManagedPolicyReference => {
        Name => 'MyManagedPolicyName',    # min: 1, max: 128
        Path => 'MyManagedPolicyPath',    # min: 1, max: 512; OPTIONAL
      },
      InstanceArn      => 'MyInstanceArn',
      PermissionSetArn => 'MyPermissionSetArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/DetachCustomerManagedPolicyReferenceFromPermissionSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomerManagedPolicyReference => L<Paws::SSOAdmin::CustomerManagedPolicyReference>

Specifies the name and path of a customer managed policy. You must have
an IAM policy that matches the name and path in each Amazon Web
Services account where you want to deploy your permission set.



=head2 B<REQUIRED> InstanceArn => Str

The ARN of the IAM Identity Center instance under which the operation
will be executed.



=head2 B<REQUIRED> PermissionSetArn => Str

The ARN of the C<PermissionSet>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachCustomerManagedPolicyReferenceFromPermissionSet in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

