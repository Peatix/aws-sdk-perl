
package Paws::EC2::DescribeMacModificationTasks;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MacModificationTaskIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'MacModificationTaskId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMacModificationTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeMacModificationTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeMacModificationTasks - Arguments for method DescribeMacModificationTasks on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMacModificationTasks on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeMacModificationTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMacModificationTasks.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeMacModificationTasksResult = $ec2->DescribeMacModificationTasks(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MacModificationTaskIds => [ 'MyMacModificationTaskId', ... ],   # OPTIONAL
      MaxResults             => 1,                                    # OPTIONAL
      NextToken              => 'MyString',                           # OPTIONAL
    );

    # Results:
    my $MacModificationTasks =
      $DescribeMacModificationTasksResult->MacModificationTasks;
    my $NextToken = $DescribeMacModificationTasksResult->NextToken;

    # Returns a L<Paws::EC2::DescribeMacModificationTasksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeMacModificationTasks>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

Specifies one or more filters for the request:

=over

=item *

C<instance-id> - The ID of the instance for which the task was created.

=item *

C<task-state> - The state of the task (C<successful> | C<failed> |
C<in-progress> | C<pending>).

=item *

C<mac-system-integrity-protection-configuration.sip-status> - The
overall SIP state requested in the task (C<enabled> | C<disabled>).

=item *

C<start-time> - The date and time the task was created.

=item *

C<task-type> - The type of task (C<sip-modification> |
C<volume-ownership-delegation>).

=back




=head2 MacModificationTaskIds => ArrayRef[Str|Undef]

The ID of task.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the returned C<nextToken> value. This value can be between 5 and 500.
If C<maxResults> is given a larger value than 500, you receive an
error.



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMacModificationTasks in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

