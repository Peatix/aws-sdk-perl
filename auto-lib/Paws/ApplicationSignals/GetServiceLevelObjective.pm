
package Paws::ApplicationSignals::GetServiceLevelObjective;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceLevelObjective');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/slo/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationSignals::GetServiceLevelObjectiveOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::GetServiceLevelObjective - Arguments for method GetServiceLevelObjective on L<Paws::ApplicationSignals>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceLevelObjective on the
L<Amazon CloudWatch Application Signals|Paws::ApplicationSignals> service. Use the attributes of this class
as arguments to method GetServiceLevelObjective.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceLevelObjective.

=head1 SYNOPSIS

    my $application-signals = Paws->service('ApplicationSignals');
    my $GetServiceLevelObjectiveOutput =
      $application -signals->GetServiceLevelObjective(
      Id => 'MyServiceLevelObjectiveId',

      );

    # Results:
    my $Slo = $GetServiceLevelObjectiveOutput->Slo;

 # Returns a L<Paws::ApplicationSignals::GetServiceLevelObjectiveOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-signals/GetServiceLevelObjective>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ARN or name of the SLO that you want to retrieve information about.
You can find the ARNs of SLOs by using the ListServiceLevelObjectives
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListServiceLevelObjectives.html)
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceLevelObjective in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

