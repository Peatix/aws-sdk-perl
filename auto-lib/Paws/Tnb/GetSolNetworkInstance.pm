
package Paws::Tnb::GetSolNetworkInstance;
  use Moose;
  has NsInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nsInstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSolNetworkInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/nslcm/v1/ns_instances/{nsInstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::GetSolNetworkInstanceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolNetworkInstance - Arguments for method GetSolNetworkInstance on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSolNetworkInstance on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method GetSolNetworkInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSolNetworkInstance.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $GetSolNetworkInstanceOutput = $tnb->GetSolNetworkInstance(
      NsInstanceId => 'MyNsInstanceId',

    );

    # Results:
    my $Arn       = $GetSolNetworkInstanceOutput->Arn;
    my $Id        = $GetSolNetworkInstanceOutput->Id;
    my $LcmOpInfo = $GetSolNetworkInstanceOutput->LcmOpInfo;
    my $Metadata  = $GetSolNetworkInstanceOutput->Metadata;
    my $NsInstanceDescription =
      $GetSolNetworkInstanceOutput->NsInstanceDescription;
    my $NsInstanceName = $GetSolNetworkInstanceOutput->NsInstanceName;
    my $NsState        = $GetSolNetworkInstanceOutput->NsState;
    my $NsdId          = $GetSolNetworkInstanceOutput->NsdId;
    my $NsdInfoId      = $GetSolNetworkInstanceOutput->NsdInfoId;
    my $Tags           = $GetSolNetworkInstanceOutput->Tags;

    # Returns a L<Paws::Tnb::GetSolNetworkInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/GetSolNetworkInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NsInstanceId => Str

ID of the network instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSolNetworkInstance in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

