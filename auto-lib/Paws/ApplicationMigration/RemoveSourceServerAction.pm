
package Paws::ApplicationMigration::RemoveSourceServerAction;
  use Moose;
  has AccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountID');
  has ActionID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionID', required => 1);
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveSourceServerAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/RemoveSourceServerAction');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::RemoveSourceServerActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::RemoveSourceServerAction - Arguments for method RemoveSourceServerAction on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveSourceServerAction on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method RemoveSourceServerAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveSourceServerAction.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $RemoveSourceServerActionResponse = $mgn->RemoveSourceServerAction(
      ActionID       => 'MyActionID',
      SourceServerID => 'MySourceServerID',
      AccountID      => 'MyAccountID',        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/RemoveSourceServerAction>

=head1 ATTRIBUTES


=head2 AccountID => Str

Source server post migration account ID.



=head2 B<REQUIRED> ActionID => Str

Source server post migration custom action ID to remove.



=head2 B<REQUIRED> SourceServerID => Str

Source server ID of the post migration custom action to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveSourceServerAction in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

