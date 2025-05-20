
package Paws::WorkMail::DeleteImpersonationRole;
  use Moose;
  has ImpersonationRoleId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteImpersonationRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DeleteImpersonationRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeleteImpersonationRole - Arguments for method DeleteImpersonationRole on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteImpersonationRole on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DeleteImpersonationRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteImpersonationRole.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DeleteImpersonationRoleResponse = $workmail->DeleteImpersonationRole(
      ImpersonationRoleId => 'MyImpersonationRoleId',
      OrganizationId      => 'MyOrganizationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DeleteImpersonationRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImpersonationRoleId => Str

The ID of the impersonation role to delete.



=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization from which to delete the impersonation role.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteImpersonationRole in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

