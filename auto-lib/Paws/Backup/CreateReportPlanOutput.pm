
package Paws::Backup::CreateReportPlanOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has ReportPlanArn => (is => 'ro', isa => 'Str');
  has ReportPlanName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateReportPlanOutput

=head1 ATTRIBUTES


=head2 CreationTime => Str

The date and time a backup vault is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 ReportPlanArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a resource. The
format of the ARN depends on the resource type.


=head2 ReportPlanName => Str

The unique name of the report plan.


=head2 _request_id => Str


=cut

