
package Paws::Tnb::UpdateSolNetworkInstance;
  use Moose;
  has ModifyVnfInfoData => (is => 'ro', isa => 'Paws::Tnb::UpdateSolNetworkModify', traits => ['NameInRequest'], request_name => 'modifyVnfInfoData');
  has NsInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nsInstanceId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdateNs => (is => 'ro', isa => 'Paws::Tnb::UpdateSolNetworkServiceData', traits => ['NameInRequest'], request_name => 'updateNs');
  has UpdateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSolNetworkInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/nslcm/v1/ns_instances/{nsInstanceId}/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::UpdateSolNetworkInstanceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::UpdateSolNetworkInstance - Arguments for method UpdateSolNetworkInstance on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSolNetworkInstance on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method UpdateSolNetworkInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSolNetworkInstance.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $UpdateSolNetworkInstanceOutput = $tnb->UpdateSolNetworkInstance(
      NsInstanceId      => 'MyNsInstanceId',
      UpdateType        => 'MODIFY_VNF_INFORMATION',
      ModifyVnfInfoData => {
        VnfConfigurableProperties => {

        },
        VnfInstanceId => 'MyVnfInstanceId',

      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # , value: max: 256
      },    # OPTIONAL
      UpdateNs => {
        NsdInfoId             => 'MyNsdInfoId',
        AdditionalParamsForNs => {

        },
      },    # OPTIONAL
    );

    # Results:
    my $NsLcmOpOccId = $UpdateSolNetworkInstanceOutput->NsLcmOpOccId;
    my $Tags         = $UpdateSolNetworkInstanceOutput->Tags;

    # Returns a L<Paws::Tnb::UpdateSolNetworkInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/UpdateSolNetworkInstance>

=head1 ATTRIBUTES


=head2 ModifyVnfInfoData => L<Paws::Tnb::UpdateSolNetworkModify>

Identifies the network function information parameters and/or the
configurable properties of the network function to be modified.

Include this property only if the update type is
C<MODIFY_VNF_INFORMATION>.



=head2 B<REQUIRED> NsInstanceId => Str

ID of the network instance.



=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. When you use this
API, the tags are only applied to the network operation that is
created. These tags are not applied to the network instance. Use tags
to search and filter your resources or track your Amazon Web Services
costs.



=head2 UpdateNs => L<Paws::Tnb::UpdateSolNetworkServiceData>

Identifies the network service descriptor and the configurable
properties of the descriptor, to be used for the update.

Include this property only if the update type is C<UPDATE_NS>.



=head2 B<REQUIRED> UpdateType => Str

The type of update.

=over

=item *

Use the C<MODIFY_VNF_INFORMATION> update type, to update a specific
network function configuration, in the network instance.

=item *

Use the C<UPDATE_NS> update type, to update the network instance to a
new network service descriptor.

=back


Valid values are: C<"MODIFY_VNF_INFORMATION">, C<"UPDATE_NS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSolNetworkInstance in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

