
package Paws::IoT::ListCommandExecutions;
  use Moose;
  has CommandArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commandArn');
  has CompletedTimeFilter => (is => 'ro', isa => 'Paws::IoT::TimeFilter', traits => ['NameInRequest'], request_name => 'completedTimeFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder');
  has StartedTimeFilter => (is => 'ro', isa => 'Paws::IoT::TimeFilter', traits => ['NameInRequest'], request_name => 'startedTimeFilter');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has TargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCommandExecutions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/command-executions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListCommandExecutionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCommandExecutions - Arguments for method ListCommandExecutions on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCommandExecutions on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListCommandExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCommandExecutions.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListCommandExecutionsResponse = $iot->ListCommandExecutions(
      CommandArn          => 'MyCommandArn',    # OPTIONAL
      CompletedTimeFilter => {
        After  => 'MyStringDateTime',           # min: 1, max: 64; OPTIONAL
        Before => 'MyStringDateTime',           # min: 1, max: 64; OPTIONAL
      },    # OPTIONAL
      MaxResults        => 1,                # OPTIONAL
      Namespace         => 'AWS-IoT',        # OPTIONAL
      NextToken         => 'MyNextToken',    # OPTIONAL
      SortOrder         => 'ASCENDING',      # OPTIONAL
      StartedTimeFilter => {
        After  => 'MyStringDateTime',        # min: 1, max: 64; OPTIONAL
        Before => 'MyStringDateTime',        # min: 1, max: 64; OPTIONAL
      },    # OPTIONAL
      Status    => 'CREATED',        # OPTIONAL
      TargetArn => 'MyTargetArn',    # OPTIONAL
    );

    # Results:
    my $CommandExecutions = $ListCommandExecutionsResponse->CommandExecutions;
    my $NextToken         = $ListCommandExecutionsResponse->NextToken;

    # Returns a L<Paws::IoT::ListCommandExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListCommandExecutions>

=head1 ATTRIBUTES


=head2 CommandArn => Str

The Amazon Resource Number (ARN) of the command. You can use this
information to list all command executions for a particular command.



=head2 CompletedTimeFilter => L<Paws::IoT::TimeFilter>

List all command executions that completed any time before or after the
date and time that you specify. The date and time uses the format
C<yyyy-MM-dd'T'HH:mm>.



=head2 MaxResults => Int

The maximum number of results to return in this operation.



=head2 Namespace => Str

The namespace of the command.

Valid values are: C<"AWS-IoT">, C<"AWS-IoT-FleetWise">

=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise C<null> to receive the first set of
results.



=head2 SortOrder => Str

Specify whether to list the command executions that were created in the
ascending or descending order. By default, the API returns all commands
in the descending order based on the start time or completion time of
the executions, that are determined by the C<startTimeFilter> and
C<completeTimeFilter> parameters.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 StartedTimeFilter => L<Paws::IoT::TimeFilter>

List all command executions that started any time before or after the
date and time that you specify. The date and time uses the format
C<yyyy-MM-dd'T'HH:mm>.



=head2 Status => Str

List all command executions for the device that have a particular
status. For example, you can filter the list to display only command
executions that have failed or timed out.

Valid values are: C<"CREATED">, C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">, C<"REJECTED">, C<"TIMED_OUT">

=head2 TargetArn => Str

The Amazon Resource Number (ARN) of the target device. You can use this
information to list all command executions for a particular device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCommandExecutions in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

