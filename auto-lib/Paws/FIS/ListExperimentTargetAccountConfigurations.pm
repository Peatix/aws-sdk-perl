
package Paws::FIS::ListExperimentTargetAccountConfigurations;
  use Moose;
  has ExperimentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExperimentTargetAccountConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/experiments/{id}/targetAccountConfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::ListExperimentTargetAccountConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ListExperimentTargetAccountConfigurations - Arguments for method ListExperimentTargetAccountConfigurations on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExperimentTargetAccountConfigurations on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method ListExperimentTargetAccountConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExperimentTargetAccountConfigurations.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $ListExperimentTargetAccountConfigurationsResponse =
      $fis->ListExperimentTargetAccountConfigurations(
      ExperimentId => 'MyExperimentId',
      NextToken    => 'MyNextToken',      # OPTIONAL
      );

    # Results:
    my $NextToken =
      $ListExperimentTargetAccountConfigurationsResponse->NextToken;
    my $TargetAccountConfigurations =
      $ListExperimentTargetAccountConfigurationsResponse
      ->TargetAccountConfigurations;

# Returns a L<Paws::FIS::ListExperimentTargetAccountConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/ListExperimentTargetAccountConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExperimentId => Str

The ID of the experiment.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExperimentTargetAccountConfigurations in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

