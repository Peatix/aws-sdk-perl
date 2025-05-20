
package Paws::Tnb::InstantiateSolNetworkInstance;
  use Moose;
  has AdditionalParamsForNs => (is => 'ro', isa => 'Paws::Tnb::Document', traits => ['NameInRequest'], request_name => 'additionalParamsForNs');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'dry_run');
  has NsInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nsInstanceId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InstantiateSolNetworkInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/nslcm/v1/ns_instances/{nsInstanceId}/instantiate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::InstantiateSolNetworkInstanceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::InstantiateSolNetworkInstance - Arguments for method InstantiateSolNetworkInstance on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InstantiateSolNetworkInstance on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method InstantiateSolNetworkInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InstantiateSolNetworkInstance.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $InstantiateSolNetworkInstanceOutput =
      $tnb->InstantiateSolNetworkInstance(
      NsInstanceId          => 'MyNsInstanceId',
      AdditionalParamsForNs => {

      },    # OPTIONAL
      DryRun => 1,    # OPTIONAL
      Tags   => {
        'MyTagKey' => 'MyTagValue',    # , value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $NsLcmOpOccId = $InstantiateSolNetworkInstanceOutput->NsLcmOpOccId;
    my $Tags         = $InstantiateSolNetworkInstanceOutput->Tags;

    # Returns a L<Paws::Tnb::InstantiateSolNetworkInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/InstantiateSolNetworkInstance>

=head1 ATTRIBUTES


=head2 AdditionalParamsForNs => L<Paws::Tnb::Document>

Provides values for the configurable properties.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> NsInstanceId => Str

ID of the network instance.



=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. When you use this
API, the tags are only applied to the network operation that is
created. These tags are not applied to the network instance. Use tags
to search and filter your resources or track your Amazon Web Services
costs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InstantiateSolNetworkInstance in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

