
package Paws::StepFunctions::DescribeMapRunOutput;
  use Moose;
  has ExecutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionArn' , required => 1);
  has ExecutionCounts => (is => 'ro', isa => 'Paws::StepFunctions::MapRunExecutionCounts', traits => ['NameInRequest'], request_name => 'executionCounts' , required => 1);
  has ItemCounts => (is => 'ro', isa => 'Paws::StepFunctions::MapRunItemCounts', traits => ['NameInRequest'], request_name => 'itemCounts' , required => 1);
  has MapRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mapRunArn' , required => 1);
  has MaxConcurrency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxConcurrency' , required => 1);
  has RedriveCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'redriveCount' );
  has RedriveDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'redriveDate' );
  has StartDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startDate' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' , required => 1);
  has StopDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stopDate' );
  has ToleratedFailureCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'toleratedFailureCount' , required => 1);
  has ToleratedFailurePercentage => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'toleratedFailurePercentage' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeMapRunOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionArn => Str

The Amazon Resource Name (ARN) that identifies the execution in which
the Map Run was started.


=head2 B<REQUIRED> ExecutionCounts => L<Paws::StepFunctions::MapRunExecutionCounts>

A JSON object that contains information about the total number of child
workflow executions for the Map Run, and the count of child workflow
executions for each status, such as C<failed> and C<succeeded>.


=head2 B<REQUIRED> ItemCounts => L<Paws::StepFunctions::MapRunItemCounts>

A JSON object that contains information about the total number of
items, and the item count for each processing status, such as
C<pending> and C<failed>.


=head2 B<REQUIRED> MapRunArn => Str

The Amazon Resource Name (ARN) that identifies a Map Run.


=head2 B<REQUIRED> MaxConcurrency => Int

The maximum number of child workflow executions configured to run in
parallel for the Map Run at the same time.


=head2 RedriveCount => Int

The number of times you've redriven a Map Run. If you have not yet
redriven a Map Run, the C<redriveCount> is 0. This count is only
updated if you successfully redrive a Map Run.


=head2 RedriveDate => Str

The date a Map Run was last redriven. If you have not yet redriven a
Map Run, the C<redriveDate> is null.


=head2 B<REQUIRED> StartDate => Str

The date when the Map Run was started.


=head2 B<REQUIRED> Status => Str

The current status of the Map Run.

Valid values are: C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">, C<"ABORTED">
=head2 StopDate => Str

The date when the Map Run was stopped.


=head2 B<REQUIRED> ToleratedFailureCount => Int

The maximum number of failed child workflow executions before the Map
Run fails.


=head2 B<REQUIRED> ToleratedFailurePercentage => Num

The maximum percentage of failed child workflow executions before the
Map Run fails.


=head2 _request_id => Str


=cut

1;