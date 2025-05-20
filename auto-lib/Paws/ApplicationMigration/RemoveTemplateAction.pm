
package Paws::ApplicationMigration::RemoveTemplateAction;
  use Moose;
  has ActionID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionID', required => 1);
  has LaunchConfigurationTemplateID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchConfigurationTemplateID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTemplateAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/RemoveTemplateAction');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::RemoveTemplateActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::RemoveTemplateAction - Arguments for method RemoveTemplateAction on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTemplateAction on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method RemoveTemplateAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTemplateAction.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $RemoveTemplateActionResponse = $mgn->RemoveTemplateAction(
      ActionID                      => 'MyActionID',
      LaunchConfigurationTemplateID => 'MyLaunchConfigurationTemplateID',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/RemoveTemplateAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionID => Str

Template post migration custom action ID to remove.



=head2 B<REQUIRED> LaunchConfigurationTemplateID => Str

Launch configuration template ID of the post migration custom action to
remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTemplateAction in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

