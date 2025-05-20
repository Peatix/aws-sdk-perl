
package Paws::ResourceGroups::UpdateAccountSettings;
  use Moose;
  has GroupLifecycleEventsDesiredStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-account-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::UpdateAccountSettingsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::UpdateAccountSettings - Arguments for method UpdateAccountSettings on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountSettings on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method UpdateAccountSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountSettings.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $UpdateAccountSettingsOutput = $resource -groups->UpdateAccountSettings(
      GroupLifecycleEventsDesiredStatus => 'ACTIVE',    # OPTIONAL
    );

    # Results:
    my $AccountSettings = $UpdateAccountSettingsOutput->AccountSettings;

    # Returns a L<Paws::ResourceGroups::UpdateAccountSettingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/UpdateAccountSettings>

=head1 ATTRIBUTES


=head2 GroupLifecycleEventsDesiredStatus => Str

Specifies whether you want to turn group lifecycle events
(https://docs.aws.amazon.com/ARG/latest/userguide/monitor-groups.html)
on or off.

You can't turn on group lifecycle events if your resource groups quota
is greater than 2,000.

Valid values are: C<"ACTIVE">, C<"INACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountSettings in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

