
package Paws::MQ::Promote;
  use Moose;
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'broker-id', required => 1);
  has Mode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mode', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Promote');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/brokers/{broker-id}/promote');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::PromoteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::Promote - Arguments for method Promote on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Promote on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method Promote.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Promote.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $PromoteResponse = $mq->Promote(
      BrokerId => 'My__string',
      Mode     => 'SWITCHOVER',

    );

    # Results:
    my $BrokerId = $PromoteResponse->BrokerId;

    # Returns a L<Paws::MQ::PromoteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/Promote>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrokerId => Str

The unique ID that Amazon MQ generates for the broker.



=head2 B<REQUIRED> Mode => Str

The Promote mode requested. Note: Valid values for the parameter are
SWITCHOVER, FAILOVER.

Valid values are: C<"SWITCHOVER">, C<"FAILOVER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Promote in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

