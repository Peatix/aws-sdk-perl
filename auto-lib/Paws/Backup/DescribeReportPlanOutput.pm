
package Paws::Backup::DescribeReportPlanOutput;
  use Moose;
  has ReportPlan => (is => 'ro', isa => 'Paws::Backup::ReportPlan');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeReportPlanOutput

=head1 ATTRIBUTES


=head2 ReportPlan => L<Paws::Backup::ReportPlan>

Returns details about the report plan that is specified by its name.
These details include the report plan's Amazon Resource Name (ARN),
description, settings, delivery channel, deployment status, creation
time, and last attempted and successful run times.


=head2 _request_id => Str


=cut

