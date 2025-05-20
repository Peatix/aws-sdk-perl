
package Paws::WellArchitected::ListCheckSummaries;
  use Moose;
  has ChoiceId => (is => 'ro', isa => 'Str', required => 1);
  has LensArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PillarId => (is => 'ro', isa => 'Str', required => 1);
  has QuestionId => (is => 'ro', isa => 'Str', required => 1);
  has WorkloadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkloadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCheckSummaries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloads/{WorkloadId}/checkSummaries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::ListCheckSummariesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListCheckSummaries - Arguments for method ListCheckSummaries on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCheckSummaries on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method ListCheckSummaries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCheckSummaries.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $ListCheckSummariesOutput = $wellarchitected->ListCheckSummaries(
      ChoiceId   => 'MyChoiceId',
      LensArn    => 'MyLensArn',
      PillarId   => 'MyPillarId',
      QuestionId => 'MyQuestionId',
      WorkloadId => 'MyWorkloadId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $CheckSummaries = $ListCheckSummariesOutput->CheckSummaries;
    my $NextToken      = $ListCheckSummariesOutput->NextToken;

    # Returns a L<Paws::WellArchitected::ListCheckSummariesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/ListCheckSummaries>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChoiceId => Str





=head2 B<REQUIRED> LensArn => Str

Well-Architected Lens ARN.



=head2 MaxResults => Int





=head2 NextToken => Str





=head2 B<REQUIRED> PillarId => Str





=head2 B<REQUIRED> QuestionId => Str





=head2 B<REQUIRED> WorkloadId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCheckSummaries in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

