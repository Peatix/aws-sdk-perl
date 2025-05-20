
package Paws::Tnb::GetSolFunctionInstance;
  use Moose;
  has VnfInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vnfInstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSolFunctionInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/vnflcm/v1/vnf_instances/{vnfInstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::GetSolFunctionInstanceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolFunctionInstance - Arguments for method GetSolFunctionInstance on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSolFunctionInstance on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method GetSolFunctionInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSolFunctionInstance.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $GetSolFunctionInstanceOutput = $tnb->GetSolFunctionInstance(
      VnfInstanceId => 'MyVnfInstanceId',

    );

    # Results:
    my $Arn = $GetSolFunctionInstanceOutput->Arn;
    my $Id  = $GetSolFunctionInstanceOutput->Id;
    my $InstantiatedVnfInfo =
      $GetSolFunctionInstanceOutput->InstantiatedVnfInfo;
    my $InstantiationState = $GetSolFunctionInstanceOutput->InstantiationState;
    my $Metadata           = $GetSolFunctionInstanceOutput->Metadata;
    my $NsInstanceId       = $GetSolFunctionInstanceOutput->NsInstanceId;
    my $Tags               = $GetSolFunctionInstanceOutput->Tags;
    my $VnfPkgId           = $GetSolFunctionInstanceOutput->VnfPkgId;
    my $VnfProductName     = $GetSolFunctionInstanceOutput->VnfProductName;
    my $VnfProvider        = $GetSolFunctionInstanceOutput->VnfProvider;
    my $VnfdId             = $GetSolFunctionInstanceOutput->VnfdId;
    my $VnfdVersion        = $GetSolFunctionInstanceOutput->VnfdVersion;

    # Returns a L<Paws::Tnb::GetSolFunctionInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/GetSolFunctionInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VnfInstanceId => Str

ID of the network function.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSolFunctionInstance in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

