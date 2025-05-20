
package Paws::Tnb::CancelSolNetworkOperation;
  use Moose;
  has NsLcmOpOccId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nsLcmOpOccId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelSolNetworkOperation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::CancelSolNetworkOperation - Arguments for method CancelSolNetworkOperation on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelSolNetworkOperation on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method CancelSolNetworkOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelSolNetworkOperation.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    $tnb->CancelSolNetworkOperation(
      NsLcmOpOccId => 'MyNsLcmOpOccId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/CancelSolNetworkOperation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NsLcmOpOccId => Str

The identifier of the network operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelSolNetworkOperation in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

