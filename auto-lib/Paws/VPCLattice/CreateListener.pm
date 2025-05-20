
package Paws::VPCLattice::CreateListener;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DefaultAction => (is => 'ro', isa => 'Paws::VPCLattice::RuleAction', traits => ['NameInRequest'], request_name => 'defaultAction', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Port => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'port');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol', required => 1);
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceIdentifier', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::VPCLattice::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateListener');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/services/{serviceIdentifier}/listeners');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::CreateListenerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateListener - Arguments for method CreateListener on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateListener on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method CreateListener.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateListener.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $CreateListenerResponse = $vpc -lattice->CreateListener(
      DefaultAction => {
        FixedResponse => {
          StatusCode => 1,    # min: 100, max: 599

        },    # OPTIONAL
        Forward => {
          TargetGroups => [
            {
              TargetGroupIdentifier =>
                'MyTargetGroupIdentifier',    # min: 17, max: 2048
              Weight => 1,                    # max: 999; OPTIONAL
            },
            ...
          ],    # min: 1, max: 10

        },    # OPTIONAL
      },
      Name              => 'MyListenerName',
      Protocol          => 'HTTP',
      ServiceIdentifier => 'MyServiceIdentifier',
      ClientToken       => 'MyClientToken',         # OPTIONAL
      Port              => 1,                       # OPTIONAL
      Tags              => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn           = $CreateListenerResponse->Arn;
    my $DefaultAction = $CreateListenerResponse->DefaultAction;
    my $Id            = $CreateListenerResponse->Id;
    my $Name          = $CreateListenerResponse->Name;
    my $Port          = $CreateListenerResponse->Port;
    my $Protocol      = $CreateListenerResponse->Protocol;
    my $ServiceArn    = $CreateListenerResponse->ServiceArn;
    my $ServiceId     = $CreateListenerResponse->ServiceId;

    # Returns a L<Paws::VPCLattice::CreateListenerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/CreateListener>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.



=head2 B<REQUIRED> DefaultAction => L<Paws::VPCLattice::RuleAction>

The action for the default rule. Each listener has a default rule. The
default rule is used if no other rules match.



=head2 B<REQUIRED> Name => Str

The name of the listener. A listener name must be unique within a
service. The valid characters are a-z, 0-9, and hyphens (-). You can't
use a hyphen as the first or last character, or immediately after
another hyphen.



=head2 Port => Int

The listener port. You can specify a value from 1 to 65535. For HTTP,
the default is 80. For HTTPS, the default is 443.



=head2 B<REQUIRED> Protocol => Str

The listener protocol.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TLS_PASSTHROUGH">

=head2 B<REQUIRED> ServiceIdentifier => Str

The ID or ARN of the service.



=head2 Tags => L<Paws::VPCLattice::TagMap>

The tags for the listener.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateListener in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

