
package Paws::CodeGuruSecurity::GetMetricsSummary;
  use Moose;
  has Date => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'date', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricsSummary');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metrics/summary');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruSecurity::GetMetricsSummaryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::GetMetricsSummary - Arguments for method GetMetricsSummary on L<Paws::CodeGuruSecurity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetricsSummary on the
L<Amazon CodeGuru Security|Paws::CodeGuruSecurity> service. Use the attributes of this class
as arguments to method GetMetricsSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetricsSummary.

=head1 SYNOPSIS

    my $codeguru-security = Paws->service('CodeGuruSecurity');
    my $GetMetricsSummaryResponse = $codeguru -security->GetMetricsSummary(
      Date => '1970-01-01T01:00:00',

    );

    # Results:
    my $MetricsSummary = $GetMetricsSummaryResponse->MetricsSummary;

    # Returns a L<Paws::CodeGuruSecurity::GetMetricsSummaryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-security/GetMetricsSummary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Date => Str

The date you want to retrieve summary metrics from, rounded to the
nearest day. The date must be within the past two years.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetricsSummary in L<Paws::CodeGuruSecurity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

