
package Paws::ApplicationSignals::ListServiceLevelObjectiveExclusionWindows;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServiceLevelObjectiveExclusionWindows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/slo/{Id}/exclusion-windows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationSignals::ListServiceLevelObjectiveExclusionWindowsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::ListServiceLevelObjectiveExclusionWindows - Arguments for method ListServiceLevelObjectiveExclusionWindows on L<Paws::ApplicationSignals>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServiceLevelObjectiveExclusionWindows on the
L<Amazon CloudWatch Application Signals|Paws::ApplicationSignals> service. Use the attributes of this class
as arguments to method ListServiceLevelObjectiveExclusionWindows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServiceLevelObjectiveExclusionWindows.

=head1 SYNOPSIS

    my $application-signals = Paws->service('ApplicationSignals');
    my $ListServiceLevelObjectiveExclusionWindowsOutput =
      $application -signals->ListServiceLevelObjectiveExclusionWindows(
      Id         => 'MyServiceLevelObjectiveId',
      MaxResults => 1,                             # OPTIONAL
      NextToken  => 'MyNextToken',                 # OPTIONAL
      );

    # Results:
    my $ExclusionWindows =
      $ListServiceLevelObjectiveExclusionWindowsOutput->ExclusionWindows;
    my $NextToken = $ListServiceLevelObjectiveExclusionWindowsOutput->NextToken;

# Returns a L<Paws::ApplicationSignals::ListServiceLevelObjectiveExclusionWindowsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-signals/ListServiceLevelObjectiveExclusionWindows>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the SLO to list exclusion windows for.



=head2 MaxResults => Int

The maximum number of results to return in one operation. If you omit
this parameter, the default of 50 is used.

 </p>



=head2 NextToken => Str

Include this value, if it was returned by the previous operation, to
get the next set of service level objectives.

 </p>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServiceLevelObjectiveExclusionWindows in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

