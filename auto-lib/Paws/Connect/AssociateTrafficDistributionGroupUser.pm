
package Paws::Connect::AssociateTrafficDistributionGroupUser;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has TrafficDistributionGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrafficDistributionGroupId', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateTrafficDistributionGroupUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/traffic-distribution-group/{TrafficDistributionGroupId}/user');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::AssociateTrafficDistributionGroupUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AssociateTrafficDistributionGroupUser - Arguments for method AssociateTrafficDistributionGroupUser on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateTrafficDistributionGroupUser on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method AssociateTrafficDistributionGroupUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateTrafficDistributionGroupUser.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $AssociateTrafficDistributionGroupUserResponse =
      $connect->AssociateTrafficDistributionGroupUser(
      InstanceId                 => 'MyInstanceId',
      TrafficDistributionGroupId => 'MyTrafficDistributionGroupIdOrArn',
      UserId                     => 'MyUserId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/AssociateTrafficDistributionGroupUser>

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

The identifier of the user account. This can be the ID or the ARN of
the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateTrafficDistributionGroupUser in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

