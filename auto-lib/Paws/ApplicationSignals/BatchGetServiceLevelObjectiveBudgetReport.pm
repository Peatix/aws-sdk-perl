
package Paws::ApplicationSignals::BatchGetServiceLevelObjectiveBudgetReport;
  use Moose;
  has SloIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetServiceLevelObjectiveBudgetReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/budget-report');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationSignals::BatchGetServiceLevelObjectiveBudgetReportOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::BatchGetServiceLevelObjectiveBudgetReport - Arguments for method BatchGetServiceLevelObjectiveBudgetReport on L<Paws::ApplicationSignals>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetServiceLevelObjectiveBudgetReport on the
L<Amazon CloudWatch Application Signals|Paws::ApplicationSignals> service. Use the attributes of this class
as arguments to method BatchGetServiceLevelObjectiveBudgetReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetServiceLevelObjectiveBudgetReport.

=head1 SYNOPSIS

    my $application-signals = Paws->service('ApplicationSignals');
    my $BatchGetServiceLevelObjectiveBudgetReportOutput =
      $application -signals->BatchGetServiceLevelObjectiveBudgetReport(
      SloIds    => [ 'MyString', ... ],
      Timestamp => '1970-01-01T01:00:00',

      );

    # Results:
    my $Errors    = $BatchGetServiceLevelObjectiveBudgetReportOutput->Errors;
    my $Reports   = $BatchGetServiceLevelObjectiveBudgetReportOutput->Reports;
    my $Timestamp = $BatchGetServiceLevelObjectiveBudgetReportOutput->Timestamp;

# Returns a L<Paws::ApplicationSignals::BatchGetServiceLevelObjectiveBudgetReportOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-signals/BatchGetServiceLevelObjectiveBudgetReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SloIds => ArrayRef[Str|Undef]

An array containing the IDs of the service level objectives that you
want to include in the report.



=head2 B<REQUIRED> Timestamp => Str

The date and time that you want the report to be for. It is expressed
as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetServiceLevelObjectiveBudgetReport in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

