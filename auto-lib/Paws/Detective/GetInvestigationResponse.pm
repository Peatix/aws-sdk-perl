
package Paws::Detective::GetInvestigationResponse;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has EntityArn => (is => 'ro', isa => 'Str');
  has EntityType => (is => 'ro', isa => 'Str');
  has GraphArn => (is => 'ro', isa => 'Str');
  has InvestigationId => (is => 'ro', isa => 'Str');
  has ScopeEndTime => (is => 'ro', isa => 'Str');
  has ScopeStartTime => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::GetInvestigationResponse

=head1 ATTRIBUTES


=head2 CreatedTime => Str

The creation time of the investigation report in UTC time stamp format.


=head2 EntityArn => Str

The unique Amazon Resource Name (ARN). Detective supports IAM user ARNs
and IAM role ARNs.


=head2 EntityType => Str

Type of entity. For example, Amazon Web Services accounts, such as an
IAM user and/or IAM role.

Valid values are: C<"IAM_ROLE">, C<"IAM_USER">
=head2 GraphArn => Str

The Amazon Resource Name (ARN) of the behavior graph.


=head2 InvestigationId => Str

The investigation ID of the investigation report.


=head2 ScopeEndTime => Str

The data and time when the investigation began. The value is an UTC
ISO8601 formatted string. For example, C<2021-08-18T16:35:56.284Z>.


=head2 ScopeStartTime => Str

The start date and time used to set the scope time within which you
want to generate the investigation report. The value is an UTC ISO8601
formatted string. For example, C<2021-08-18T16:35:56.284Z>.


=head2 Severity => Str

The severity assigned is based on the likelihood and impact of the
indicators of compromise discovered in the investigation.

Valid values are: C<"INFORMATIONAL">, C<"LOW">, C<"MEDIUM">, C<"HIGH">, C<"CRITICAL">
=head2 State => Str

The current state of the investigation. An archived investigation
indicates that you have completed reviewing the investigation.

Valid values are: C<"ACTIVE">, C<"ARCHIVED">
=head2 Status => Str

The status based on the completion status of the investigation.

Valid values are: C<"RUNNING">, C<"FAILED">, C<"SUCCESSFUL">
=head2 _request_id => Str


=cut

