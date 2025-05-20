
package Paws::Tnb::GetSolNetworkOperation;
  use Moose;
  has NsLcmOpOccId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nsLcmOpOccId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSolNetworkOperation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::GetSolNetworkOperationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolNetworkOperation - Arguments for method GetSolNetworkOperation on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSolNetworkOperation on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method GetSolNetworkOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSolNetworkOperation.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $GetSolNetworkOperationOutput = $tnb->GetSolNetworkOperation(
      NsLcmOpOccId => 'MyNsLcmOpOccId',

    );

    # Results:
    my $Arn              = $GetSolNetworkOperationOutput->Arn;
    my $Error            = $GetSolNetworkOperationOutput->Error;
    my $Id               = $GetSolNetworkOperationOutput->Id;
    my $LcmOperationType = $GetSolNetworkOperationOutput->LcmOperationType;
    my $Metadata         = $GetSolNetworkOperationOutput->Metadata;
    my $NsInstanceId     = $GetSolNetworkOperationOutput->NsInstanceId;
    my $OperationState   = $GetSolNetworkOperationOutput->OperationState;
    my $Tags             = $GetSolNetworkOperationOutput->Tags;
    my $Tasks            = $GetSolNetworkOperationOutput->Tasks;
    my $UpdateType       = $GetSolNetworkOperationOutput->UpdateType;

    # Returns a L<Paws::Tnb::GetSolNetworkOperationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/GetSolNetworkOperation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NsLcmOpOccId => Str

The identifier of the network operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSolNetworkOperation in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

