
package Paws::OpenSearch::DescribeDryRunProgress;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has DryRunId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'dryRunId');
  has LoadDryRunConfig => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'loadDryRunConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDryRunProgress');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain/{DomainName}/dryRun');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::DescribeDryRunProgressResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeDryRunProgress - Arguments for method DescribeDryRunProgress on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDryRunProgress on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method DescribeDryRunProgress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDryRunProgress.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $DescribeDryRunProgressResponse = $es->DescribeDryRunProgress(
      DomainName       => 'MyDomainName',
      DryRunId         => 'MyGUID',         # OPTIONAL
      LoadDryRunConfig => 1,                # OPTIONAL
    );

    # Results:
    my $DryRunConfig = $DescribeDryRunProgressResponse->DryRunConfig;
    my $DryRunProgressStatus =
      $DescribeDryRunProgressResponse->DryRunProgressStatus;
    my $DryRunResults = $DescribeDryRunProgressResponse->DryRunResults;

    # Returns a L<Paws::OpenSearch::DescribeDryRunProgressResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain.



=head2 DryRunId => Str

The unique identifier of the dry run.



=head2 LoadDryRunConfig => Bool

Whether to include the configuration of the dry run in the response.
The configuration specifies the updates that you're planning to make on
the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDryRunProgress in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

