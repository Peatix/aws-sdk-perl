package Paws::AppConfig::ActionsMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has AT_DEPLOYMENT_TICK => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Action]');
  has ON_DEPLOYMENT_BAKING => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Action]');
  has ON_DEPLOYMENT_COMPLETE => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Action]');
  has ON_DEPLOYMENT_ROLLED_BACK => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Action]');
  has ON_DEPLOYMENT_START => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Action]');
  has ON_DEPLOYMENT_STEP => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Action]');
  has PRE_CREATE_HOSTED_CONFIGURATION_VERSION => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Action]');
  has PRE_START_DEPLOYMENT => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Action]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ActionsMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppConfig::ActionsMap object:

  $service_obj->Method(Att1 => { AT_DEPLOYMENT_TICK => $value, ..., PRE_START_DEPLOYMENT => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppConfig::ActionsMap object:

  $result = $service_obj->Method(...);
  $result->Att1->AT_DEPLOYMENT_TICK

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AT_DEPLOYMENT_TICK => ArrayRef[L<Paws::AppConfig::Action>]


=head2 ON_DEPLOYMENT_BAKING => ArrayRef[L<Paws::AppConfig::Action>]


=head2 ON_DEPLOYMENT_COMPLETE => ArrayRef[L<Paws::AppConfig::Action>]


=head2 ON_DEPLOYMENT_ROLLED_BACK => ArrayRef[L<Paws::AppConfig::Action>]


=head2 ON_DEPLOYMENT_START => ArrayRef[L<Paws::AppConfig::Action>]


=head2 ON_DEPLOYMENT_STEP => ArrayRef[L<Paws::AppConfig::Action>]


=head2 PRE_CREATE_HOSTED_CONFIGURATION_VERSION => ArrayRef[L<Paws::AppConfig::Action>]


=head2 PRE_START_DEPLOYMENT => ArrayRef[L<Paws::AppConfig::Action>]



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

