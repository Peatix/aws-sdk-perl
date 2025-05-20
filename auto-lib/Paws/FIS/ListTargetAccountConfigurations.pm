
package Paws::FIS::ListTargetAccountConfigurations;
  use Moose;
  has ExperimentTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTargetAccountConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/experimentTemplates/{id}/targetAccountConfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::ListTargetAccountConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ListTargetAccountConfigurations - Arguments for method ListTargetAccountConfigurations on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTargetAccountConfigurations on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method ListTargetAccountConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTargetAccountConfigurations.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $ListTargetAccountConfigurationsResponse =
      $fis->ListTargetAccountConfigurations(
      ExperimentTemplateId => 'MyExperimentTemplateId',
      MaxResults           => 1,                          # OPTIONAL
      NextToken            => 'MyNextToken',              # OPTIONAL
      );

    # Results:
    my $NextToken = $ListTargetAccountConfigurationsResponse->NextToken;
    my $TargetAccountConfigurations =
      $ListTargetAccountConfigurationsResponse->TargetAccountConfigurations;

    # Returns a L<Paws::FIS::ListTargetAccountConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/ListTargetAccountConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExperimentTemplateId => Str

The ID of the experiment template.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned nextToken
value.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTargetAccountConfigurations in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

