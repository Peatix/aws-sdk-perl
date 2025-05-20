
package Paws::WorkMail::UpdateImpersonationRole;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ImpersonationRoleId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::ImpersonationRule]', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateImpersonationRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::UpdateImpersonationRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::UpdateImpersonationRole - Arguments for method UpdateImpersonationRole on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateImpersonationRole on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method UpdateImpersonationRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateImpersonationRole.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $UpdateImpersonationRoleResponse = $workmail->UpdateImpersonationRole(
      ImpersonationRoleId => 'MyImpersonationRoleId',
      Name                => 'MyImpersonationRoleName',
      OrganizationId      => 'MyOrganizationId',
      Rules               => [
        {
          Effect              => 'ALLOW',                  # values: ALLOW, DENY
          ImpersonationRuleId => 'MyImpersonationRuleId',  # min: 1, max: 64
          Description         =>
            'MyImpersonationRuleDescription',    # min: 1, max: 256; OPTIONAL
          Name => 'MyImpersonationRuleName',     # min: 1, max: 64; OPTIONAL
          NotTargetUsers => [
            'MyEntityIdentifier', ...            # min: 1, max: 256
          ],    # min: 1, max: 10; OPTIONAL
          TargetUsers => [
            'MyEntityIdentifier', ...    # min: 1, max: 256
          ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],
      Type        => 'FULL_ACCESS',
      Description => 'MyImpersonationRoleDescription',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/UpdateImpersonationRole>

=head1 ATTRIBUTES


=head2 Description => Str

The updated impersonation role description.



=head2 B<REQUIRED> ImpersonationRoleId => Str

The ID of the impersonation role to update.



=head2 B<REQUIRED> Name => Str

The updated impersonation role name.



=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization that contains the impersonation role to
update.



=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::WorkMail::ImpersonationRule>]

The updated list of rules.



=head2 B<REQUIRED> Type => Str

The updated impersonation role type.

Valid values are: C<"FULL_ACCESS">, C<"READ_ONLY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateImpersonationRole in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

