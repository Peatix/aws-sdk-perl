
package Paws::Resiliencehub::StartResourceGroupingRecommendationTaskResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has GroupingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupingId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::StartResourceGroupingRecommendationTaskResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 ErrorMessage => Str

Error that occurred while executing a grouping recommendation task.


=head2 B<REQUIRED> GroupingId => Str

Identifier of the grouping recommendation task.


=head2 B<REQUIRED> Status => Str

Status of the action.

Valid values are: C<"Pending">, C<"InProgress">, C<"Failed">, C<"Success">
=head2 _request_id => Str


=cut

