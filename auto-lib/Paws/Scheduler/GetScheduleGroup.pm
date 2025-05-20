
package Paws::Scheduler::GetScheduleGroup;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetScheduleGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schedule-groups/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Scheduler::GetScheduleGroupOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::GetScheduleGroup - Arguments for method GetScheduleGroup on L<Paws::Scheduler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetScheduleGroup on the
L<Amazon EventBridge Scheduler|Paws::Scheduler> service. Use the attributes of this class
as arguments to method GetScheduleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetScheduleGroup.

=head1 SYNOPSIS

    my $scheduler = Paws->service('Scheduler');
    my $GetScheduleGroupOutput = $scheduler->GetScheduleGroup(
      Name => 'MyScheduleGroupName',

    );

    # Results:
    my $Arn                  = $GetScheduleGroupOutput->Arn;
    my $CreationDate         = $GetScheduleGroupOutput->CreationDate;
    my $LastModificationDate = $GetScheduleGroupOutput->LastModificationDate;
    my $Name                 = $GetScheduleGroupOutput->Name;
    my $State                = $GetScheduleGroupOutput->State;

    # Returns a L<Paws::Scheduler::GetScheduleGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scheduler/GetScheduleGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the schedule group to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetScheduleGroup in L<Paws::Scheduler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

