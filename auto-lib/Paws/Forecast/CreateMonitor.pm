
package Paws::Forecast::CreateMonitor;
  use Moose;
  has MonitorName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMonitor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreateMonitorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateMonitor - Arguments for method CreateMonitor on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMonitor on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreateMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMonitor.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreateMonitorResponse = $forecast->CreateMonitor(
      MonitorName => 'MyName',
      ResourceArn => 'MyArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $MonitorArn = $CreateMonitorResponse->MonitorArn;

    # Returns a L<Paws::Forecast::CreateMonitorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreateMonitor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor resource.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the predictor to monitor.



=head2 Tags => ArrayRef[L<Paws::Forecast::Tag>]

A list of tags
(https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html)
to apply to the monitor resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMonitor in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

