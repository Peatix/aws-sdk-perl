
package Paws::SESv2::PutDedicatedIpPoolScalingAttributes;
  use Moose;
  has PoolName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PoolName', required => 1);
  has ScalingMode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDedicatedIpPoolScalingAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/dedicated-ip-pools/{PoolName}/scaling');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::PutDedicatedIpPoolScalingAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutDedicatedIpPoolScalingAttributes - Arguments for method PutDedicatedIpPoolScalingAttributes on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDedicatedIpPoolScalingAttributes on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutDedicatedIpPoolScalingAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDedicatedIpPoolScalingAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutDedicatedIpPoolScalingAttributesResponse =
      $email->PutDedicatedIpPoolScalingAttributes(
      PoolName    => 'MyPoolName',
      ScalingMode => 'STANDARD',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutDedicatedIpPoolScalingAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PoolName => Str

The name of the dedicated IP pool.



=head2 B<REQUIRED> ScalingMode => Str

The scaling mode to apply to the dedicated IP pool.

Changing the scaling mode from C<MANAGED> to C<STANDARD> is not
supported.

Valid values are: C<"STANDARD">, C<"MANAGED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDedicatedIpPoolScalingAttributes in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

