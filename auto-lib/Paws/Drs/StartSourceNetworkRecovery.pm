
package Paws::Drs::StartSourceNetworkRecovery;
  use Moose;
  has DeployAsNew => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deployAsNew');
  has SourceNetworks => (is => 'ro', isa => 'ArrayRef[Paws::Drs::StartSourceNetworkRecoveryRequestNetworkEntry]', traits => ['NameInRequest'], request_name => 'sourceNetworks', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSourceNetworkRecovery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartSourceNetworkRecovery');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::StartSourceNetworkRecoveryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::StartSourceNetworkRecovery - Arguments for method StartSourceNetworkRecovery on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSourceNetworkRecovery on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method StartSourceNetworkRecovery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSourceNetworkRecovery.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $StartSourceNetworkRecoveryResponse = $drs->StartSourceNetworkRecovery(
      SourceNetworks => [
        {
          SourceNetworkID => 'MySourceNetworkID',   # min: 20, max: 20
          CfnStackName    => 'MyCfnStackName',      # min: 1, max: 128; OPTIONAL
        },
        ...
      ],
      DeployAsNew => 1,                             # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Job = $StartSourceNetworkRecoveryResponse->Job;

    # Returns a L<Paws::Drs::StartSourceNetworkRecoveryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/StartSourceNetworkRecovery>

=head1 ATTRIBUTES


=head2 DeployAsNew => Bool

Don't update existing CloudFormation Stack, recover the network using a
new stack.



=head2 B<REQUIRED> SourceNetworks => ArrayRef[L<Paws::Drs::StartSourceNetworkRecoveryRequestNetworkEntry>]

The Source Networks that we want to start a Recovery Job for.



=head2 Tags => L<Paws::Drs::TagsMap>

The tags to be associated with the Source Network recovery Job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSourceNetworkRecovery in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

