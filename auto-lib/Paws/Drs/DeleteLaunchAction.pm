
package Paws::Drs::DeleteLaunchAction;
  use Moose;
  has ActionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionId', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLaunchAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteLaunchAction');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::DeleteLaunchActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::DeleteLaunchAction - Arguments for method DeleteLaunchAction on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLaunchAction on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method DeleteLaunchAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLaunchAction.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $DeleteLaunchActionResponse = $drs->DeleteLaunchAction(
      ActionId   => 'MyLaunchActionId',
      ResourceId => 'MyLaunchActionResourceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/DeleteLaunchAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionId => Str





=head2 B<REQUIRED> ResourceId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLaunchAction in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

