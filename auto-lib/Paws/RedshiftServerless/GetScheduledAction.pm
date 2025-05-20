
package Paws::RedshiftServerless::GetScheduledAction;
  use Moose;
  has ScheduledActionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scheduledActionName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetScheduledAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::GetScheduledActionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetScheduledAction - Arguments for method GetScheduledAction on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetScheduledAction on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method GetScheduledAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetScheduledAction.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $GetScheduledActionResponse = $redshift -serverless->GetScheduledAction(
      ScheduledActionName => 'MyScheduledActionName',

    );

    # Results:
    my $ScheduledAction = $GetScheduledActionResponse->ScheduledAction;

    # Returns a L<Paws::RedshiftServerless::GetScheduledActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/GetScheduledAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduledActionName => Str

The name of the scheduled action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetScheduledAction in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

