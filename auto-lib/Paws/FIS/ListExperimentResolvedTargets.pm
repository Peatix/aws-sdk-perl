
package Paws::FIS::ListExperimentResolvedTargets;
  use Moose;
  has ExperimentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TargetName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'targetName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExperimentResolvedTargets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/experiments/{id}/resolvedTargets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::ListExperimentResolvedTargetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ListExperimentResolvedTargets - Arguments for method ListExperimentResolvedTargets on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExperimentResolvedTargets on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method ListExperimentResolvedTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExperimentResolvedTargets.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $ListExperimentResolvedTargetsResponse =
      $fis->ListExperimentResolvedTargets(
      ExperimentId => 'MyExperimentId',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyNextToken',      # OPTIONAL
      TargetName   => 'MyTargetName',     # OPTIONAL
      );

    # Results:
    my $NextToken = $ListExperimentResolvedTargetsResponse->NextToken;
    my $ResolvedTargets =
      $ListExperimentResolvedTargetsResponse->ResolvedTargets;

    # Returns a L<Paws::FIS::ListExperimentResolvedTargetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/ListExperimentResolvedTargets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExperimentId => Str

The ID of the experiment.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned nextToken
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 TargetName => Str

The name of the target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExperimentResolvedTargets in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

