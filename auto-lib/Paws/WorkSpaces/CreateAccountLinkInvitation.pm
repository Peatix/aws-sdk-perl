
package Paws::WorkSpaces::CreateAccountLinkInvitation;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has TargetAccountId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccountLinkInvitation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::CreateAccountLinkInvitationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateAccountLinkInvitation - Arguments for method CreateAccountLinkInvitation on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccountLinkInvitation on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateAccountLinkInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccountLinkInvitation.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateAccountLinkInvitationResult =
      $workspaces->CreateAccountLinkInvitation(
      TargetAccountId => 'MyAwsAccount',
      ClientToken     => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $AccountLink = $CreateAccountLinkInvitationResult->AccountLink;

    # Returns a L<Paws::WorkSpaces::CreateAccountLinkInvitationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateAccountLinkInvitation>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A string of up to 64 ASCII characters that Amazon WorkSpaces uses to
ensure idempotent creation.



=head2 B<REQUIRED> TargetAccountId => Str

The identifier of the target account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccountLinkInvitation in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

