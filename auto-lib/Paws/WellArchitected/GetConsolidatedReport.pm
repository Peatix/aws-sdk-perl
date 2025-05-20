
package Paws::WellArchitected::GetConsolidatedReport;
  use Moose;
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Format', required => 1);
  has IncludeSharedResources => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'IncludeSharedResources');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConsolidatedReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/consolidatedReport');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::GetConsolidatedReportOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetConsolidatedReport - Arguments for method GetConsolidatedReport on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConsolidatedReport on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method GetConsolidatedReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConsolidatedReport.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $GetConsolidatedReportOutput = $wellarchitected->GetConsolidatedReport(
      Format                 => 'PDF',
      IncludeSharedResources => 1,                # OPTIONAL
      MaxResults             => 1,                # OPTIONAL
      NextToken              => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Base64String = $GetConsolidatedReportOutput->Base64String;
    my $Metrics      = $GetConsolidatedReportOutput->Metrics;
    my $NextToken    = $GetConsolidatedReportOutput->NextToken;

    # Returns a L<Paws::WellArchitected::GetConsolidatedReportOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/GetConsolidatedReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Format => Str

The format of the consolidated report.

For C<PDF>, C<Base64String> is returned. For C<JSON>, C<Metrics> is
returned.

Valid values are: C<"PDF">, C<"JSON">

=head2 IncludeSharedResources => Bool

Set to C<true> to have shared resources included in the report.



=head2 MaxResults => Int

The maximum number of results to return for this request.



=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConsolidatedReport in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

