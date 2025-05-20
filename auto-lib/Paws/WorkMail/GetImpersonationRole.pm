
package Paws::WorkMail::GetImpersonationRole;
  use Moose;
  has ImpersonationRoleId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImpersonationRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::GetImpersonationRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetImpersonationRole - Arguments for method GetImpersonationRole on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImpersonationRole on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method GetImpersonationRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImpersonationRole.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $GetImpersonationRoleResponse = $workmail->GetImpersonationRole(
      ImpersonationRoleId => 'MyImpersonationRoleId',
      OrganizationId      => 'MyOrganizationId',

    );

    # Results:
    my $DateCreated  = $GetImpersonationRoleResponse->DateCreated;
    my $DateModified = $GetImpersonationRoleResponse->DateModified;
    my $Description  = $GetImpersonationRoleResponse->Description;
    my $ImpersonationRoleId =
      $GetImpersonationRoleResponse->ImpersonationRoleId;
    my $Name  = $GetImpersonationRoleResponse->Name;
    my $Rules = $GetImpersonationRoleResponse->Rules;
    my $Type  = $GetImpersonationRoleResponse->Type;

    # Returns a L<Paws::WorkMail::GetImpersonationRoleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/GetImpersonationRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImpersonationRoleId => Str

The impersonation role ID to retrieve.



=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization from which to retrieve the impersonation
role.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImpersonationRole in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

