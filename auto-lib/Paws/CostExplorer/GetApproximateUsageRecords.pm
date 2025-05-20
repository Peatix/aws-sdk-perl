
package Paws::CostExplorer::GetApproximateUsageRecords;
  use Moose;
  has ApproximationDimension => (is => 'ro', isa => 'Str', required => 1);
  has Granularity => (is => 'ro', isa => 'Str', required => 1);
  has Services => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApproximateUsageRecords');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetApproximateUsageRecordsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetApproximateUsageRecords - Arguments for method GetApproximateUsageRecords on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApproximateUsageRecords on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetApproximateUsageRecords.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApproximateUsageRecords.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetApproximateUsageRecordsResponse = $ce->GetApproximateUsageRecords(
      ApproximationDimension => 'SERVICE',
      Granularity            => 'DAILY',
      Services               => [
        'MyGenericString', ...    # max: 1024
      ],    # OPTIONAL
    );

    # Results:
    my $LookbackPeriod = $GetApproximateUsageRecordsResponse->LookbackPeriod;
    my $Services       = $GetApproximateUsageRecordsResponse->Services;
    my $TotalRecords   = $GetApproximateUsageRecordsResponse->TotalRecords;

   # Returns a L<Paws::CostExplorer::GetApproximateUsageRecordsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetApproximateUsageRecords>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApproximationDimension => Str

The service to evaluate for the usage records. You can choose
resource-level data at daily granularity, or hourly granularity with or
without resource-level data.

Valid values are: C<"SERVICE">, C<"RESOURCE">

=head2 B<REQUIRED> Granularity => Str

How granular you want the data to be. You can enable data at hourly or
daily granularity.

Valid values are: C<"DAILY">, C<"MONTHLY">, C<"HOURLY">

=head2 Services => ArrayRef[Str|Undef]

The service metadata for the service or services you want to query. If
not specified, all elements are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApproximateUsageRecords in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

