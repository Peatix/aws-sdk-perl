
package Paws::Billingconductor::ListBillingGroupCostReportsOutput;
  use Moose;
  has BillingGroupCostReports => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::BillingGroupCostReportElement]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListBillingGroupCostReportsOutput

=head1 ATTRIBUTES


=head2 BillingGroupCostReports => ArrayRef[L<Paws::Billingconductor::BillingGroupCostReportElement>]

A list of C<BillingGroupCostReportElement> retrieved.


=head2 NextToken => Str

The pagination token that's used on subsequent calls to get reports.


=head2 _request_id => Str


=cut

