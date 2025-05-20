
package Paws::Backup::ListReportPlansOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReportPlans => (is => 'ro', isa => 'ArrayRef[Paws::Backup::ReportPlan]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListReportPlansOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 ReportPlans => ArrayRef[L<Paws::Backup::ReportPlan>]

The report plans with detailed information for each plan. This
information includes the Amazon Resource Name (ARN), report plan name,
description, settings, delivery channel, deployment status, creation
time, and last times the report plan attempted to and successfully ran.


=head2 _request_id => Str


=cut

