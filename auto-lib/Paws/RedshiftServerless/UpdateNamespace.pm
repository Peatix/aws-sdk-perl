
package Paws::RedshiftServerless::UpdateNamespace;
  use Moose;
  has AdminPasswordSecretKmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminPasswordSecretKmsKeyId' );
  has AdminUsername => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminUsername' );
  has AdminUserPassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminUserPassword' );
  has DefaultIamRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultIamRoleArn' );
  has IamRoles => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'iamRoles' );
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' );
  has LogExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logExports' );
  has ManageAdminPassword => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'manageAdminPassword' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::UpdateNamespaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::UpdateNamespace - Arguments for method UpdateNamespace on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNamespace on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method UpdateNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNamespace.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $UpdateNamespaceResponse = $redshift -serverless->UpdateNamespace(
      NamespaceName               => 'MyNamespaceName',
      AdminPasswordSecretKmsKeyId => 'MyKmsKeyId',               # OPTIONAL
      AdminUserPassword           => 'MyDbPassword',             # OPTIONAL
      AdminUsername               => 'MyDbUser',                 # OPTIONAL
      DefaultIamRoleArn           => 'MyString',                 # OPTIONAL
      IamRoles                    => [ 'MyIamRoleArn', ... ],    # OPTIONAL
      KmsKeyId                    => 'MyString',                 # OPTIONAL
      LogExports                  => [
        'useractivitylog', ... # values: useractivitylog, userlog, connectionlog
      ],    # OPTIONAL
      ManageAdminPassword => 1,    # OPTIONAL
    );

    # Results:
    my $Namespace = $UpdateNamespaceResponse->Namespace;

    # Returns a L<Paws::RedshiftServerless::UpdateNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/UpdateNamespace>

=head1 ATTRIBUTES


=head2 AdminPasswordSecretKmsKeyId => Str

The ID of the Key Management Service (KMS) key used to encrypt and
store the namespace's admin credentials secret. You can only use this
parameter if C<manageAdminPassword> is true.



=head2 AdminUsername => Str

The username of the administrator for the first database created in the
namespace. This parameter must be updated together with
C<adminUserPassword>.



=head2 AdminUserPassword => Str

The password of the administrator for the first database created in the
namespace. This parameter must be updated together with
C<adminUsername>.

You can't use C<adminUserPassword> if C<manageAdminPassword> is true.



=head2 DefaultIamRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to set as a default in
the namespace. This parameter must be updated together with
C<iamRoles>.



=head2 IamRoles => ArrayRef[Str|Undef]

A list of IAM roles to associate with the namespace. This parameter
must be updated together with C<defaultIamRoleArn>.



=head2 KmsKeyId => Str

The ID of the Amazon Web Services Key Management Service key used to
encrypt your data.



=head2 LogExports => ArrayRef[Str|Undef]

The types of logs the namespace can export. The export types are
C<userlog>, C<connectionlog>, and C<useractivitylog>.



=head2 ManageAdminPassword => Bool

If C<true>, Amazon Redshift uses Secrets Manager to manage the
namespace's admin credentials. You can't use C<adminUserPassword> if
C<manageAdminPassword> is true. If C<manageAdminPassword> is false or
not set, Amazon Redshift uses C<adminUserPassword> for the admin user
account's password.



=head2 B<REQUIRED> NamespaceName => Str

The name of the namespace to update. You can't update the name of a
namespace once it is created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNamespace in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

