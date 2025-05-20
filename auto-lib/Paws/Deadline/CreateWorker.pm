
package Paws::Deadline::CreateWorker;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);
  has HostProperties => (is => 'ro', isa => 'Paws::Deadline::HostPropertiesRequest', traits => ['NameInRequest'], request_name => 'hostProperties');
  has Tags => (is => 'ro', isa => 'Paws::Deadline::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateWorkerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateWorker - Arguments for method CreateWorker on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorker on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateWorker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorker.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateWorkerResponse = $deadline->CreateWorker(
      FarmId         => 'MyFarmId',
      FleetId        => 'MyFleetId',
      ClientToken    => 'MyClientToken',    # OPTIONAL
      HostProperties => {
        HostName    => 'MyHostName',        # OPTIONAL
        IpAddresses => {
          IpV4Addresses => [ 'MyIpV4Address', ... ],    # OPTIONAL
          IpV6Addresses => [ 'MyIpV6Address', ... ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $WorkerId = $CreateWorkerResponse->WorkerId;

    # Returns a L<Paws::Deadline::CreateWorkerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateWorker>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm to connect to the worker.



=head2 B<REQUIRED> FleetId => Str

The fleet ID to connect to the worker.



=head2 HostProperties => L<Paws::Deadline::HostPropertiesRequest>

The IP address and host name of the worker.



=head2 Tags => L<Paws::Deadline::Tags>

Each tag consists of a tag key and a tag value. Tag keys and values are
both required, but tag values can be empty strings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorker in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

