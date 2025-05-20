
package Paws::WorkSpaces::DeleteAccountLinkInvitation;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has LinkId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountLinkInvitation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DeleteAccountLinkInvitationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DeleteAccountLinkInvitation - Arguments for method DeleteAccountLinkInvitation on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAccountLinkInvitation on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DeleteAccountLinkInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAccountLinkInvitation.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DeleteAccountLinkInvitationResult =
      $workspaces->DeleteAccountLinkInvitation(
      LinkId      => 'MyLinkId',
      ClientToken => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $AccountLink = $DeleteAccountLinkInvitationResult->AccountLink;

    # Returns a L<Paws::WorkSpaces::DeleteAccountLinkInvitationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DeleteAccountLinkInvitation>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A string of up to 64 ASCII characters that Amazon WorkSpaces uses to
ensure idempotent creation.



=head2 B<REQUIRED> LinkId => Str

The identifier of the account link.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAccountLinkInvitation in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

