
package Paws::WorkMail::CreateImpersonationRole;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::ImpersonationRule]', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImpersonationRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::CreateImpersonationRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateImpersonationRole - Arguments for method CreateImpersonationRole on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImpersonationRole on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method CreateImpersonationRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImpersonationRole.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $CreateImpersonationRoleResponse = $workmail->CreateImpersonationRole(
      Name           => 'MyImpersonationRoleName',
      OrganizationId => 'MyOrganizationId',
      Rules          => [
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
      ClientToken => 'MyIdempotencyClientToken',          # OPTIONAL
      Description => 'MyImpersonationRoleDescription',    # OPTIONAL
    );

    # Results:
    my $ImpersonationRoleId =
      $CreateImpersonationRoleResponse->ImpersonationRoleId;

    # Returns a L<Paws::WorkMail::CreateImpersonationRoleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/CreateImpersonationRole>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency token for the client request.



=head2 Description => Str

The description of the new impersonation role.



=head2 B<REQUIRED> Name => Str

The name of the new impersonation role.



=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization to create the new impersonation role within.



=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::WorkMail::ImpersonationRule>]

The list of rules for the impersonation role.



=head2 B<REQUIRED> Type => Str

The impersonation role's type. The available impersonation role types
are C<READ_ONLY> or C<FULL_ACCESS>.

Valid values are: C<"FULL_ACCESS">, C<"READ_ONLY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImpersonationRole in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

