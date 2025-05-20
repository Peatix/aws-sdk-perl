
package Paws::AccessAnalyzer::GenerateFindingRecommendation;
  use Moose;
  has AnalyzerArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'analyzerArn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateFindingRecommendation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recommendation/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GenerateFindingRecommendation - Arguments for method GenerateFindingRecommendation on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateFindingRecommendation on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method GenerateFindingRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateFindingRecommendation.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    $access -analyzer->GenerateFindingRecommendation(
      AnalyzerArn => 'MyAnalyzerArn',
      Id          => 'MyGenerateFindingRecommendationRequestIdString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/GenerateFindingRecommendation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerArn => Str

The ARN of the analyzer
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources)
used to generate the finding recommendation.



=head2 B<REQUIRED> Id => Str

The unique ID for the finding recommendation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateFindingRecommendation in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

