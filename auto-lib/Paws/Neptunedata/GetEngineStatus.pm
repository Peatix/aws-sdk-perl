
package Paws::Neptunedata::GetEngineStatus;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEngineStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::GetEngineStatusOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetEngineStatus - Arguments for method GetEngineStatus on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEngineStatus on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method GetEngineStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEngineStatus.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $GetEngineStatusOutput = $neptune -db->GetEngineStatus();

    # Results:
    my $DbEngineVersion     = $GetEngineStatusOutput->DbEngineVersion;
    my $DfeQueryEngine      = $GetEngineStatusOutput->DfeQueryEngine;
    my $Features            = $GetEngineStatusOutput->Features;
    my $Gremlin             = $GetEngineStatusOutput->Gremlin;
    my $LabMode             = $GetEngineStatusOutput->LabMode;
    my $Opencypher          = $GetEngineStatusOutput->Opencypher;
    my $Role                = $GetEngineStatusOutput->Role;
    my $RollingBackTrxCount = $GetEngineStatusOutput->RollingBackTrxCount;
    my $RollingBackTrxEarliestStartTime =
      $GetEngineStatusOutput->RollingBackTrxEarliestStartTime;
    my $Settings  = $GetEngineStatusOutput->Settings;
    my $Sparql    = $GetEngineStatusOutput->Sparql;
    my $StartTime = $GetEngineStatusOutput->StartTime;
    my $Status    = $GetEngineStatusOutput->Status;

    # Returns a L<Paws::Neptunedata::GetEngineStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/GetEngineStatus>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEngineStatus in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

