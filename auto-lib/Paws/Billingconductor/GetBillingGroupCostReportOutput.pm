
package Paws::Billingconductor::GetBillingGroupCostReportOutput;
  use Moose;
  has BillingGroupCostReportResults => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::BillingGroupCostReportResultElement]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::GetBillingGroupCostReportOutput

=head1 ATTRIBUTES


=head2 BillingGroupCostReportResults => ArrayRef[L<Paws::Billingconductor::BillingGroupCostReportResultElement>]

The list of margin summary reports.


=head2 NextToken => Str

The pagination token used on subsequent calls to get reports.


=head2 _request_id => Str


=cut

