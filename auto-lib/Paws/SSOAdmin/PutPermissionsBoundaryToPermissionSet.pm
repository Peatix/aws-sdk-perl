
package Paws::SSOAdmin::PutPermissionsBoundaryToPermissionSet;
  use Moose;
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has PermissionsBoundary => (is => 'ro', isa => 'Paws::SSOAdmin::PermissionsBoundary', required => 1);
  has PermissionSetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPermissionsBoundaryToPermissionSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::PutPermissionsBoundaryToPermissionSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::PutPermissionsBoundaryToPermissionSet - Arguments for method PutPermissionsBoundaryToPermissionSet on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPermissionsBoundaryToPermissionSet on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method PutPermissionsBoundaryToPermissionSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPermissionsBoundaryToPermissionSet.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $PutPermissionsBoundaryToPermissionSetResponse =
      $sso->PutPermissionsBoundaryToPermissionSet(
      InstanceArn         => 'MyInstanceArn',
      PermissionSetArn    => 'MyPermissionSetArn',
      PermissionsBoundary => {
        CustomerManagedPolicyReference => {
          Name => 'MyManagedPolicyName',    # min: 1, max: 128
          Path => 'MyManagedPolicyPath',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        ManagedPolicyArn => 'MyManagedPolicyArn', # min: 20, max: 2048; OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/PutPermissionsBoundaryToPermissionSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceArn => Str

The ARN of the IAM Identity Center instance under which the operation
will be executed.



=head2 B<REQUIRED> PermissionsBoundary => L<Paws::SSOAdmin::PermissionsBoundary>

The permissions boundary that you want to attach to a C<PermissionSet>.



=head2 B<REQUIRED> PermissionSetArn => Str

The ARN of the C<PermissionSet>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPermissionsBoundaryToPermissionSet in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

