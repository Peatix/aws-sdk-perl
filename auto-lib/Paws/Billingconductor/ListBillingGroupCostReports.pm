
package Paws::Billingconductor::ListBillingGroupCostReports;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::Billingconductor::ListBillingGroupCostReportsFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBillingGroupCostReports');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-billing-group-cost-reports');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::ListBillingGroupCostReportsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListBillingGroupCostReports - Arguments for method ListBillingGroupCostReports on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBillingGroupCostReports on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method ListBillingGroupCostReports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBillingGroupCostReports.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $ListBillingGroupCostReportsOutput =
      $billingconductor->ListBillingGroupCostReports(
      BillingPeriod => 'MyBillingPeriod',    # OPTIONAL
      Filters       => {
        BillingGroupArns => [ 'MyBillingGroupArn', ... ]
        ,                                    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
      );

    # Results:
    my $BillingGroupCostReports =
      $ListBillingGroupCostReportsOutput->BillingGroupCostReports;
    my $NextToken = $ListBillingGroupCostReportsOutput->NextToken;

# Returns a L<Paws::Billingconductor::ListBillingGroupCostReportsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/ListBillingGroupCostReports>

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The preferred billing period for your report.



=head2 Filters => L<Paws::Billingconductor::ListBillingGroupCostReportsFilter>

A C<ListBillingGroupCostReportsFilter> to specify billing groups to
retrieve reports from.



=head2 MaxResults => Int

The maximum number of reports to retrieve.



=head2 NextToken => Str

The pagination token that's used on subsequent calls to get reports.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBillingGroupCostReports in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

