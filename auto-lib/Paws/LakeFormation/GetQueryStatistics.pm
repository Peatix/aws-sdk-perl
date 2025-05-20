
package Paws::LakeFormation::GetQueryStatistics;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueryStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetQueryStatistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::GetQueryStatisticsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetQueryStatistics - Arguments for method GetQueryStatistics on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueryStatistics on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GetQueryStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueryStatistics.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GetQueryStatisticsResponse = $lakeformation->GetQueryStatistics(
      QueryId => 'MyGetQueryStatisticsRequestQueryIdString',

    );

    # Results:
    my $ExecutionStatistics = $GetQueryStatisticsResponse->ExecutionStatistics;
    my $PlanningStatistics  = $GetQueryStatisticsResponse->PlanningStatistics;
    my $QuerySubmissionTime = $GetQueryStatisticsResponse->QuerySubmissionTime;

    # Returns a L<Paws::LakeFormation::GetQueryStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GetQueryStatistics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryId => Str

The ID of the plan query operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueryStatistics in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

