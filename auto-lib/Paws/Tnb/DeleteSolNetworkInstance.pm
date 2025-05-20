
package Paws::Tnb::DeleteSolNetworkInstance;
  use Moose;
  has NsInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nsInstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSolNetworkInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/nslcm/v1/ns_instances/{nsInstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::DeleteSolNetworkInstance - Arguments for method DeleteSolNetworkInstance on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSolNetworkInstance on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method DeleteSolNetworkInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSolNetworkInstance.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    $tnb->DeleteSolNetworkInstance(
      NsInstanceId => 'MyNsInstanceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/DeleteSolNetworkInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NsInstanceId => Str

Network instance ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSolNetworkInstance in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

