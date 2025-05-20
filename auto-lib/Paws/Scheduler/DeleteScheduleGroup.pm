
package Paws::Scheduler::DeleteScheduleGroup;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteScheduleGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schedule-groups/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Scheduler::DeleteScheduleGroupOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::DeleteScheduleGroup - Arguments for method DeleteScheduleGroup on L<Paws::Scheduler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteScheduleGroup on the
L<Amazon EventBridge Scheduler|Paws::Scheduler> service. Use the attributes of this class
as arguments to method DeleteScheduleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteScheduleGroup.

=head1 SYNOPSIS

    my $scheduler = Paws->service('Scheduler');
    my $DeleteScheduleGroupOutput = $scheduler->DeleteScheduleGroup(
      Name        => 'MyScheduleGroupName',
      ClientToken => 'MyClientToken',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scheduler/DeleteScheduleGroup>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. If you do not specify a client token, EventBridge
Scheduler uses a randomly generated token for the request to ensure
idempotency.



=head2 B<REQUIRED> Name => Str

The name of the schedule group to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteScheduleGroup in L<Paws::Scheduler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

