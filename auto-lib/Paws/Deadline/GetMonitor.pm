
package Paws::Deadline::GetMonitor;
  use Moose;
  has MonitorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/monitors/{monitorId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetMonitorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetMonitor - Arguments for method GetMonitor on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMonitor on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMonitor.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetMonitorResponse = $deadline->GetMonitor(
      MonitorId => 'MyMonitorId',

    );

    # Results:
    my $CreatedAt   = $GetMonitorResponse->CreatedAt;
    my $CreatedBy   = $GetMonitorResponse->CreatedBy;
    my $DisplayName = $GetMonitorResponse->DisplayName;
    my $IdentityCenterApplicationArn =
      $GetMonitorResponse->IdentityCenterApplicationArn;
    my $IdentityCenterInstanceArn =
      $GetMonitorResponse->IdentityCenterInstanceArn;
    my $MonitorId = $GetMonitorResponse->MonitorId;
    my $RoleArn   = $GetMonitorResponse->RoleArn;
    my $Subdomain = $GetMonitorResponse->Subdomain;
    my $UpdatedAt = $GetMonitorResponse->UpdatedAt;
    my $UpdatedBy = $GetMonitorResponse->UpdatedBy;
    my $Url       = $GetMonitorResponse->Url;

    # Returns a L<Paws::Deadline::GetMonitorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetMonitor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorId => Str

The unique identifier for the monitor. This ID is returned by the
C<CreateMonitor> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMonitor in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

