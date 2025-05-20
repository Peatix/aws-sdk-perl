
package Paws::Connect::DisassociateTrafficDistributionGroupUser;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'InstanceId', required => 1);
  has TrafficDistributionGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrafficDistributionGroupId', required => 1);
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'UserId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateTrafficDistributionGroupUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/traffic-distribution-group/{TrafficDistributionGroupId}/user');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DisassociateTrafficDistributionGroupUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DisassociateTrafficDistributionGroupUser - Arguments for method DisassociateTrafficDistributionGroupUser on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateTrafficDistributionGroupUser on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DisassociateTrafficDistributionGroupUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateTrafficDistributionGroupUser.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DisassociateTrafficDistributionGroupUserResponse =
      $connect->DisassociateTrafficDistributionGroupUser(
      InstanceId                 => 'MyInstanceId',
      TrafficDistributionGroupId => 'MyTrafficDistributionGroupIdOrArn',
      UserId                     => 'MyUserId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DisassociateTrafficDistributionGroupUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> TrafficDistributionGroupId => Str

The identifier of the traffic distribution group. This can be the ID or
the ARN of the traffic distribution group.



=head2 B<REQUIRED> UserId => Str

The identifier for the user. This can be the ID or the ARN of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateTrafficDistributionGroupUser in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

