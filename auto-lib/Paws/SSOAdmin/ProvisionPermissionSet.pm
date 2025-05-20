
package Paws::SSOAdmin::ProvisionPermissionSet;
  use Moose;
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has PermissionSetArn => (is => 'ro', isa => 'Str', required => 1);
  has TargetId => (is => 'ro', isa => 'Str');
  has TargetType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ProvisionPermissionSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::ProvisionPermissionSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ProvisionPermissionSet - Arguments for method ProvisionPermissionSet on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ProvisionPermissionSet on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method ProvisionPermissionSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ProvisionPermissionSet.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $ProvisionPermissionSetResponse = $sso->ProvisionPermissionSet(
      InstanceArn      => 'MyInstanceArn',
      PermissionSetArn => 'MyPermissionSetArn',
      TargetType       => 'AWS_ACCOUNT',
      TargetId         => 'MyTargetId',           # OPTIONAL
    );

    # Results:
    my $PermissionSetProvisioningStatus =
      $ProvisionPermissionSetResponse->PermissionSetProvisioningStatus;

    # Returns a L<Paws::SSOAdmin::ProvisionPermissionSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/ProvisionPermissionSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceArn => Str

The ARN of the IAM Identity Center instance under which the operation
will be executed. For more information about ARNs, see Amazon Resource
Names (ARNs) and Amazon Web Services Service Namespaces in the I<Amazon
Web Services General Reference>.



=head2 B<REQUIRED> PermissionSetArn => Str

The ARN of the permission set.



=head2 TargetId => Str

TargetID is an Amazon Web Services account identifier, (For example,
123456789012).



=head2 B<REQUIRED> TargetType => Str

The entity type for which the assignment will be created.

Valid values are: C<"AWS_ACCOUNT">, C<"ALL_PROVISIONED_ACCOUNTS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ProvisionPermissionSet in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

